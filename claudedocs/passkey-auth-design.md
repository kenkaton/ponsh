# パスキー認証システム設計書

## 概要
本設計書は、Ponshアプリケーションにおけるパスキー（WebAuthn）のみを使用した認証システムの実装設計を定義します。パスワードやメールアドレスを一切使用せず、パスキーのみでアカウント作成、ログイン、ログアウトを実現します。

実装はrodauth-railsフレームワークのWebAuthn機能を最大限活用し、ネイティブのPublicKeyCredential APIとStimulusを使用してフロントエンドを構築します。

## アーキテクチャ概要

### 認証フロー
```
[ユーザー] <---> [ブラウザ/デバイス] <---> [Rails App] <---> [Database]
                        |
                   [WebAuthn API]
                        |
                   [Authenticator]
                   (Touch ID/Face ID/
                    Security Key)
```

### 主要コンポーネント
1. **Rodauth**: 認証フレームワーク（既存、カスタマイズ）
2. **WebAuthn gem**: WebAuthn標準の実装
3. **Stimulus Controller**: フロントエンドのWebAuthn操作
4. **Account Model**: ユーザーアカウント管理

## データベース設計

RodauthのWebAuthn機能に準拠したデータベース構造を使用します。

### 1. accountsテーブル（Rodauth標準）
```sql
CREATE TABLE accounts (
  id BIGSERIAL PRIMARY KEY,
  status INTEGER NOT NULL DEFAULT 1,
  email CITEXT NOT NULL,  -- Rodauth標準ではemail必須だが、ユニークなIDとして使用
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT unique_email UNIQUE (email)
);

-- statusの値 (Rodauth標準):
-- 1: unverified (未検証)
-- 2: verified (アクティブ)
-- 3: closed (アカウント停止)
```

### 2. account_webauthn_user_idsテーブル（Rodauth標準）
```sql
CREATE TABLE account_webauthn_user_ids (
  id BIGSERIAL PRIMARY KEY,
  webauthn_id VARCHAR(255) NOT NULL
);
```

### 3. account_webauthn_keysテーブル（Rodauth標準）
```sql
CREATE TABLE account_webauthn_keys (
  account_id BIGINT NOT NULL,
  webauthn_id VARCHAR(255) NOT NULL,
  public_key TEXT NOT NULL,
  sign_count INTEGER NOT NULL DEFAULT 0,
  last_use TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (account_id, webauthn_id),
  FOREIGN KEY (account_id) REFERENCES accounts(id) ON DELETE CASCADE
);
```

### 4. 追加カスタムテーブル（オプション）
```sql
-- パスキーのメタデータ管理用
CREATE TABLE webauthn_key_metadata (
  id BIGSERIAL PRIMARY KEY,
  account_id BIGINT NOT NULL REFERENCES accounts(id) ON DELETE CASCADE,
  webauthn_id VARCHAR(255) NOT NULL,
  nickname VARCHAR(255),
  transports TEXT[],
  backup_eligible BOOLEAN DEFAULT FALSE,
  backup_state BOOLEAN DEFAULT FALSE,
  authenticator_attachment VARCHAR(50),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (account_id, webauthn_id) 
    REFERENCES account_webauthn_keys(account_id, webauthn_id) ON DELETE CASCADE
);
```

### 5. マイグレーション生成
```bash
# Rodauthの標準マイグレーション生成
rails generate rodauth:migration webauthn
rails generate rodauth:migration webauthn_verify_account

# カスタムテーブルのマイグレーション
rails generate migration CreateWebauthnKeyMetadata
```

## モデル設計

### 1. Account Model
```ruby
# app/models/account.rb
class Account < ApplicationRecord
  has_many :webauthn_credentials, dependent: :destroy
  
  validates :username, presence: true, uniqueness: true,
            format: { with: /\A[a-zA-Z0-9_-]+\z/, 
                     message: "英数字、アンダースコア、ハイフンのみ使用可能" }
  validates :username, length: { minimum: 3, maximum: 30 }
  
  scope :active, -> { where(status: 1) }
  
  def verified?
    status == 1
  end
  
  def has_passkey?
    webauthn_credentials.exists?
  end
  
  def webauthn_id
    Base64.strict_encode64(id.to_s)
  end
end
```

### 2. WebauthnCredential Model
```ruby
# app/models/webauthn_credential.rb
class WebauthnCredential < ApplicationRecord
  belongs_to :account
  
  validates :external_id, presence: true, uniqueness: true
  validates :public_key, presence: true
  validates :sign_count, numericality: { greater_than_or_equal_to: 0 }
  
  scope :recently_used, -> { order(last_used_at: :desc) }
  
  def update_usage!
    update!(
      last_used_at: Time.current,
      sign_count: sign_count + 1
    )
  end
  
  def device_type
    case authenticator_attachment
    when 'platform'
      transports&.include?('internal') ? 'Built-in' : 'Platform'
    when 'cross-platform'
      'Security Key'
    else
      'Unknown'
    end
  end
end
```

### 3. WebauthnChallenge Model
```ruby
# app/models/webauthn_challenge.rb
class WebauthnChallenge < ApplicationRecord
  belongs_to :account, optional: true
  
  validates :challenge, presence: true, uniqueness: true
  validates :operation, inclusion: { in: %w[registration authentication] }
  
  scope :active, -> { where('expires_at > ?', Time.current) }
  scope :expired, -> { where('expires_at <= ?', Time.current) }
  
  def self.cleanup_expired
    expired.delete_all
  end
  
  def expired?
    expires_at <= Time.current
  end
end
```

## Rodauth設定

### rodauth_main.rb（rodauth-rails準拠）
```ruby
# app/misc/rodauth_main.rb
class RodauthMain < Rodauth::Rails::Auth
  configure do
    # WebAuthn機能を有効化
    enable :webauthn, :webauthn_login, :webauthn_autofill, 
           :webauthn_verify_account, :logout
    
    # データベース設定
    db Sequel.postgres(extensions: :activerecord_connection, keep_reference: false)
    convert_token_id_to_integer? { Account.columns_hash["id"].type == :integer }
    
    # アカウントステータス管理
    account_status_column :status
    account_unverified_status_value 1  # Rodauth標準
    account_open_status_value 2         # Rodauth標準
    
    # メールアドレスをユーザー識別子として使用（ただし実際はユーザー名を格納）
    # メール検証は行わない
    login_column :email
    login_param "username"
    login_label "ユーザー名"
    
    # WebAuthn設定
    webauthn_rp_name "Ponsh"
    webauthn_rp_id { request.host_with_port.sub(/:\d+\z/, '') }
    webauthn_origin { "#{request.scheme}://#{request.host_with_port}" }
    
    # 認証レベル設定
    webauthn_user_verification "preferred"
    
    # autofill設定
    webauthn_autofill_js "webauthn_autofill.js"
    
    # アカウント作成時にパスキー登録を必須化
    webauthn_verify_account_set_password? false
    create_account_set_password? false
    
    # リダイレクト設定
    login_redirect "/"
    logout_redirect "/"
    webauthn_setup_redirect "/"
    webauthn_remove_redirect { webauthn_setup_path }
    
    # ビューとコントローラー設定
    rails_controller { RodauthController }
    title_instance_variable :@page_title
    
    # フラッシュメッセージ
    webauthn_setup_notice_flash "パスキーが正常に登録されました"
    webauthn_remove_notice_flash "パスキーが削除されました"
    webauthn_invalid_setup_flash "パスキーの登録に失敗しました"
    webauthn_invalid_remove_flash "パスキーの削除に失敗しました"
    
    # メール送信を無効化（パスキーのみのため）
    skip_email_auth_mail
    
    # カスタムメソッド
    auth_class_eval do
      # ユーザー名からemailカラムへの変換
      def account_from_login(login)
        account_ds(email: login).first
      end
      
      # パスキー必須チェック
      def require_webauthn_setup
        return if uses_webauthn?
        set_redirect_error_flash webauthn_setup_required_error_flash
        redirect webauthn_setup_redirect
      end
    end
    
    # フック
    after_create_account do
      # アカウント作成後は自動的にWebAuthn登録画面へ
      session[:account_id] = account_id
      redirect webauthn_setup_path
    end
    
    before_webauthn_setup do
      # ログインしていない場合はアカウント作成へ
      unless logged_in?
        redirect "/auth/create-account"
      end
    end
  end
end
```

## コントローラー設計

Rodauthはルーティングとコントローラーロジックを内部で処理するため、専用のコントローラーは最小限です。

### 1. RodauthController（ビューレンダリング用）
```ruby
# app/controllers/rodauth_controller.rb
class RodauthController < ApplicationController
  # Rodauthが使用するコントローラー
  # ビューのレンダリングとヘルパーメソッドへのアクセスを提供
end
```

### 2. RodauthApp（ルーティングとロジック）
```ruby
# app/misc/rodauth_app.rb
class RodauthApp < Rodauth::Rails::App
  # flashキーの設定
  flash_keys :info, :error, :notice, :alert
  
  route do |r|
    # Rodauthのルートを有効化
    rodauth.load_memory
    r.rodauth
    
    # カスタムルートの追加（必要に応じて）
    
    # WebAuthnセットアップ強制
    if rodauth.logged_in? && !rodauth.uses_webauthn?
      r.redirect rodauth.webauthn_setup_path
    end
    
    # アプリケーションへのフォールバック
    rodauth.check_active_session
  end
end
```

### 3. ApplicationController（ヘルパーメソッド）
```ruby
# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  before_action :authenticate!
  
  private
  
  def authenticate!
    rodauth.require_authentication
  end
  
  def current_account
    @current_account ||= Account.find(rodauth.session_value) if rodauth.logged_in?
  end
  helper_method :current_account
  
  def logged_in?
    rodauth.logged_in?
  end
  helper_method :logged_in?
end
```

### 4. Rodauthビューファイル

Rodauthは独自のビューシステムを使用します：

```bash
# ビューファイルの生成
rails generate rodauth:views webauthn webauthn_login webauthn_verify_account
```

生成されるビューファイル：
- `app/views/rodauth/webauthn_setup.html.erb`
- `app/views/rodauth/webauthn_auth.html.erb`
- `app/views/rodauth/webauthn_remove.html.erb`
- `app/views/rodauth/login.html.erb`
- `app/views/rodauth/create_account.html.erb`

## フロントエンド設計

### 1. Stimulus Controller（ネイティブWebAuthn API使用）
```javascript
// app/javascript/controllers/webauthn_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form", "error", "spinner"]
  static values = {
    setupUrl: String,
    authUrl: String,
    removeUrl: String
  }
  
  connect() {
    // Conditional UI（パスキー自動入力）のセットアップ
    this.setupConditionalUI()
  }
  
  // パスキー登録
  async setup(event) {
    event.preventDefault()
    this.clearError()
    this.showSpinner()
    
    try {
      // Rodauthのセットアップエンドポイントから公開鍵オプションを取得
      const optionsResponse = await fetch(this.setupUrlValue, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "X-CSRF-Token": this.csrfToken()
        },
        body: JSON.stringify({ 
          webauthn_setup: "request"
        })
      })
      
      if (!optionsResponse.ok) {
        throw new Error("セットアップオプションの取得に失敗しました")
      }
      
      const credentialOptions = await optionsResponse.json()
      
      // ネイティブWebAuthn APIでクレデンシャル作成
      const credential = await navigator.credentials.create({
        publicKey: this.decodePublicKeyOptions(credentialOptions)
      })
      
      // クレデンシャルをサーバーに送信
      const form = new FormData(this.formTarget)
      form.append("webauthn_setup", this.encodeCredential(credential))
      
      const verifyResponse = await fetch(this.setupUrlValue, {
        method: "POST",
        headers: {
          "X-CSRF-Token": this.csrfToken()
        },
        body: form
      })
      
      if (verifyResponse.ok) {
        window.location.href = "/"
      } else {
        const error = await verifyResponse.text()
        this.showError("登録に失敗しました: " + error)
      }
    } catch (error) {
      if (error.name === "NotAllowedError") {
        this.showError("パスキーの登録がキャンセルされました")
      } else {
        this.showError(error.message)
      }
    } finally {
      this.hideSpinner()
    }
  }
  
  // パスキー認証
  async authenticate(event) {
    event.preventDefault()
    this.clearError()
    this.showSpinner()
    
    try {
      // Rodauthの認証エンドポイントから公開鍵オプションを取得
      const optionsResponse = await fetch(this.authUrlValue, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "X-CSRF-Token": this.csrfToken()
        },
        body: JSON.stringify({ 
          webauthn_auth: "request"
        })
      })
      
      if (!optionsResponse.ok) {
        throw new Error("認証オプションの取得に失敗しました")
      }
      
      const credentialOptions = await optionsResponse.json()
      
      // ネイティブWebAuthn APIでクレデンシャル取得
      const credential = await navigator.credentials.get({
        publicKey: this.decodePublicKeyOptions(credentialOptions),
        mediation: "optional" // Conditional UIサポート
      })
      
      // クレデンシャルをサーバーに送信
      const form = new FormData(this.formTarget)
      form.append("webauthn_auth", this.encodeCredential(credential))
      
      const verifyResponse = await fetch(this.authUrlValue, {
        method: "POST",
        headers: {
          "X-CSRF-Token": this.csrfToken()
        },
        body: form
      })
      
      if (verifyResponse.ok) {
        window.location.href = "/"
      } else {
        this.showError("認証に失敗しました")
      }
    } catch (error) {
      if (error.name === "NotAllowedError") {
        this.showError("パスキー認証がキャンセルされました")
      } else {
        this.showError(error.message)
      }
    } finally {
      this.hideSpinner()
    }
  }
  
  // パスキー削除
  async remove(event) {
    event.preventDefault()
    
    if (!confirm("このパスキーを削除してもよろしいですか？")) {
      return
    }
    
    const form = event.currentTarget.closest("form")
    form.submit()
  }
  
  // Conditional UI設定
  async setupConditionalUI() {
    if (!window.PublicKeyCredential || 
        !PublicKeyCredential.isConditionalMediationAvailable) {
      return
    }
    
    const available = await PublicKeyCredential.isConditionalMediationAvailable()
    if (!available) return
    
    // 自動入力UIを有効化
    const usernameInputs = document.querySelectorAll('input[name="username"]')
    usernameInputs.forEach(input => {
      input.setAttribute("autocomplete", "username webauthn")
    })
  }
  
  // Base64URL デコード
  decodePublicKeyOptions(options) {
    const decoded = { ...options }
    
    // challenge をArrayBufferに変換
    if (decoded.challenge) {
      decoded.challenge = this.base64UrlToArrayBuffer(decoded.challenge)
    }
    
    // user.id をArrayBufferに変換
    if (decoded.user?.id) {
      decoded.user.id = this.base64UrlToArrayBuffer(decoded.user.id)
    }
    
    // excludeCredentials の処理
    if (decoded.excludeCredentials) {
      decoded.excludeCredentials = decoded.excludeCredentials.map(cred => ({
        ...cred,
        id: this.base64UrlToArrayBuffer(cred.id)
      }))
    }
    
    // allowCredentials の処理
    if (decoded.allowCredentials) {
      decoded.allowCredentials = decoded.allowCredentials.map(cred => ({
        ...cred,
        id: this.base64UrlToArrayBuffer(cred.id)
      }))
    }
    
    return decoded
  }
  
  // クレデンシャルのエンコード
  encodeCredential(credential) {
    const response = credential.response
    
    const data = {
      id: credential.id,
      rawId: this.arrayBufferToBase64Url(credential.rawId),
      type: credential.type,
      response: {}
    }
    
    // 登録レスポンス（attestation）
    if (response.attestationObject) {
      data.response.attestationObject = this.arrayBufferToBase64Url(response.attestationObject)
      data.response.clientDataJSON = this.arrayBufferToBase64Url(response.clientDataJSON)
    }
    
    // 認証レスポンス（assertion）
    if (response.authenticatorData) {
      data.response.authenticatorData = this.arrayBufferToBase64Url(response.authenticatorData)
      data.response.clientDataJSON = this.arrayBufferToBase64Url(response.clientDataJSON)
      data.response.signature = this.arrayBufferToBase64Url(response.signature)
      if (response.userHandle) {
        data.response.userHandle = this.arrayBufferToBase64Url(response.userHandle)
      }
    }
    
    return JSON.stringify(data)
  }
  
  // ユーティリティメソッド
  base64UrlToArrayBuffer(base64url) {
    const base64 = base64url.replace(/-/g, '+').replace(/_/g, '/')
    const padLength = (4 - (base64.length % 4)) % 4
    const padded = base64 + '='.repeat(padLength)
    const binary = atob(padded)
    const bytes = new Uint8Array(binary.length)
    for (let i = 0; i < binary.length; i++) {
      bytes[i] = binary.charCodeAt(i)
    }
    return bytes.buffer
  }
  
  arrayBufferToBase64Url(buffer) {
    const bytes = new Uint8Array(buffer)
    let binary = ''
    for (let i = 0; i < bytes.length; i++) {
      binary += String.fromCharCode(bytes[i])
    }
    const base64 = btoa(binary)
    return base64.replace(/\+/g, '-').replace(/\//g, '_').replace(/=/g, '')
  }
  
  showError(message) {
    if (this.hasErrorTarget) {
      this.errorTarget.textContent = message
      this.errorTarget.classList.remove("hidden")
    }
  }
  
  clearError() {
    if (this.hasErrorTarget) {
      this.errorTarget.textContent = ""
      this.errorTarget.classList.add("hidden")
    }
  }
  
  showSpinner() {
    if (this.hasSpinnerTarget) {
      this.spinnerTarget.classList.remove("hidden")
    }
  }
  
  hideSpinner() {
    if (this.hasSpinnerTarget) {
      this.spinnerTarget.classList.add("hidden")
    }
  }
  
  csrfToken() {
    return document.querySelector('meta[name="csrf-token"]').content
  }
}
```

### 2. ビューテンプレート

#### アカウント作成画面
```erb
<!-- app/views/rodauth/create_account.html.erb -->
<div class="max-w-md mx-auto mt-8 p-6 bg-white rounded-lg shadow-md">
  <h1 class="text-2xl font-bold mb-6"><%= @page_title %></h1>
  
  <%= form_with url: rodauth.create_account_path, local: true, 
                data: { controller: "webauthn" } do |form| %>
    
    <div class="mb-4">
      <%= form.label :username, rodauth.login_label, class: "block text-sm font-medium mb-2" %>
      <%= form.text_field rodauth.login_param, 
                          value: params[rodauth.login_param],
                          class: "w-full px-3 py-2 border rounded-lg",
                          placeholder: "ユーザー名（英数字3-30文字）",
                          pattern: "[a-zA-Z0-9_-]{3,30}",
                          autocomplete: "username",
                          required: true %>
    </div>
    
    <% if rodauth.field_error(rodauth.login_param) %>
      <div class="text-red-600 text-sm mb-4">
        <%= rodauth.field_error(rodauth.login_param) %>
      </div>
    <% end %>
    
    <div class="hidden text-red-600 mb-4" data-webauthn-target="error"></div>
    <div class="hidden" data-webauthn-target="spinner">
      <div class="flex justify-center mb-4">
        <svg class="animate-spin h-8 w-8 text-blue-600" viewBox="0 0 24 24">
          <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4" fill="none"></circle>
          <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
        </svg>
      </div>
    </div>
    
    <%= form.submit rodauth.create_account_button, 
                    class: "w-full bg-blue-600 text-white py-2 px-4 rounded-lg hover:bg-blue-700" %>
  <% end %>
  
  <div class="mt-4 text-center text-sm text-gray-600">
    <p>アカウント作成後、パスキーの登録画面に移動します</p>
    <p>Touch ID、Face ID、セキュリティキーが使用できます</p>
  </div>
  
  <div class="mt-6 text-center">
    <%= link_to "既にアカウントをお持ちの方", rodauth.login_path, 
                class: "text-blue-600 hover:underline" %>
  </div>
</div>
```

#### WebAuthnセットアップ画面
```erb
<!-- app/views/rodauth/webauthn_setup.html.erb -->
<div class="max-w-md mx-auto mt-8 p-6 bg-white rounded-lg shadow-md">
  <h1 class="text-2xl font-bold mb-6"><%= @page_title %></h1>
  
  <%= form_with url: rodauth.webauthn_setup_path, local: true,
                data: { 
                  controller: "webauthn",
                  webauthn_setup_url_value: rodauth.webauthn_setup_path,
                  action: "submit->webauthn#setup"
                } do |form| %>
    
    <div class="mb-6">
      <p class="text-gray-600">
        パスキーを登録して、安全にログインできるようにします。
      </p>
    </div>
    
    <div class="mb-4">
      <%= form.label :nickname, "パスキーの名前（オプション）", 
                     class: "block text-sm font-medium mb-2" %>
      <%= form.text_field :nickname,
                          class: "w-full px-3 py-2 border rounded-lg",
                          placeholder: "例: MacBook Pro, iPhone" %>
    </div>
    
    <div class="hidden text-red-600 mb-4" data-webauthn-target="error"></div>
    
    <div class="hidden" data-webauthn-target="spinner">
      <div class="flex justify-center mb-4">
        <svg class="animate-spin h-8 w-8 text-blue-600" viewBox="0 0 24 24">
          <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4" fill="none"></circle>
          <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
        </svg>
      </div>
    </div>
    
    <%= form.submit "パスキーを登録", 
                    class: "w-full bg-blue-600 text-white py-2 px-4 rounded-lg hover:bg-blue-700",
                    data: { webauthn_target: "form" } %>
  <% end %>
  
  <div class="mt-4 text-center text-sm text-gray-600">
    <p>Touch ID、Face ID、セキュリティキーが使用できます</p>
  </div>
  
  <% if rodauth.uses_webauthn? %>
    <div class="mt-6 text-center">
      <%= link_to "スキップ", "/", class: "text-gray-600 hover:underline" %>
    </div>
  <% end %>
</div>
```

#### ログイン画面
```erb
<!-- app/views/rodauth/login.html.erb -->
<div class="max-w-md mx-auto mt-8 p-6 bg-white rounded-lg shadow-md">
  <h1 class="text-2xl font-bold mb-6"><%= @page_title %></h1>
  
  <%= form_with url: rodauth.webauthn_login_path, local: true,
                data: { 
                  controller: "webauthn",
                  webauthn_auth_url_value: rodauth.webauthn_auth_path,
                  action: "submit->webauthn#authenticate"
                } do |form| %>
    
    <div class="mb-4">
      <%= form.label :username, rodauth.login_label, 
                     class: "block text-sm font-medium mb-2" %>
      <%= form.text_field rodauth.login_param,
                          class: "w-full px-3 py-2 border rounded-lg",
                          placeholder: "ユーザー名",
                          autocomplete: "username webauthn" %>
    </div>
    
    <div class="hidden text-red-600 mb-4" data-webauthn-target="error"></div>
    
    <div class="hidden" data-webauthn-target="spinner">
      <div class="flex justify-center mb-4">
        <svg class="animate-spin h-8 w-8 text-blue-600" viewBox="0 0 24 24">
          <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4" fill="none"></circle>
          <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
        </svg>
      </div>
    </div>
    
    <%= form.submit "パスキーでログイン", 
                    class: "w-full bg-blue-600 text-white py-2 px-4 rounded-lg hover:bg-blue-700",
                    data: { webauthn_target: "form" } %>
  <% end %>
  
  <div class="mt-6 text-center">
    <%= link_to "新規アカウント作成", rodauth.create_account_path, 
                class: "text-blue-600 hover:underline" %>
  </div>
</div>
```

## ルーティング設計

```ruby
# config/routes.rb
Rails.application.routes.draw do
  # Rodauthのルートをマウント（必須）
  mount RodauthApp, at: "/"
  
  # アプリケーション固有のルート
  root "home#index"
  
  # 他のアプリケーションルート
  resources :brands
  resources :products
  # etc...
end
```

### Rodauthが提供するルート

Rodauthは以下のルートを自動的に提供します：

- `/create-account` - アカウント作成
- `/login` - ログイン
- `/logout` - ログアウト
- `/webauthn-setup` - WebAuthnセットアップ
- `/webauthn-auth` - WebAuthn認証
- `/webauthn-remove` - WebAuthn削除
- `/webauthn-login` - WebAuthnログイン

## セキュリティ考慮事項

### 1. チャレンジ管理
- チャレンジは一度のみ使用可能（リプレイ攻撃防止）
- 5分間の有効期限
- 使用済みチャレンジは即座に削除
- 定期的な期限切れチャレンジのクリーンアップ

### 2. 認証レベル
- User Verification: "preferred"（生体認証推奨）
- Resident Key: "required"（パスキーの保存必須）
- Authenticator Attachment: "platform"優先（より安全）

### 3. セッション管理
- secure、httponly、samesiteクッキー設定
- セッションタイムアウト（30日）
- 異常なアクティビティ検知

### 4. アカウントリカバリー
- 複数パスキーの登録を推奨
- リカバリーコードの生成（オプション）
- サポート経由での本人確認プロセス

## パフォーマンス最適化

### 1. データベース
- インデックス最適化
- N+1クエリの防止
- チャレンジテーブルの定期クリーンアップ

### 2. フロントエンド
- WebAuthn操作の非同期処理
- エラーハンドリングの最適化
- Conditional UIによるUX向上

### 3. キャッシュ戦略
- 公開鍵情報のキャッシュ
- セッション情報のRedisキャッシュ

## 実装手順

### ステップ1: Rodauth設定の更新
```bash
# 既存のRodauth設定をバックアップ
cp app/misc/rodauth_main.rb app/misc/rodauth_main.rb.backup

# WebAuthn用のマイグレーション生成
rails generate rodauth:migration webauthn
rails generate rodauth:migration webauthn_verify_account

# マイグレーション実行
rails db:migrate
```

### ステップ2: ビューファイルの生成とカスタマイズ
```bash
# Rodauthビューを生成
rails generate rodauth:views webauthn webauthn_login webauthn_verify_account create_account login logout

# Tailwind CSSでスタイリング
```

### ステップ3: Stimulus Controllerの実装
```bash
# WebAuthn用のStimulus Controller作成
touch app/javascript/controllers/webauthn_controller.js
```

### ステップ4: 既存の認証機能の無効化
- password関連の機能を無効化
- email_auth関連の機能を無効化
- remember機能を調整

### ステップ5: テストの実装
```bash
# システムテスト作成
rails generate test webauthn_authentication
```

## テスト計画

### 1. 単体テスト
- モデルのバリデーション
- チャレンジ生成・検証
- セッション管理

### 2. 統合テスト
- 登録フロー全体
- ログインフロー全体
- パスキー管理機能

### 3. E2Eテスト
- Capybaraによるブラウザテスト
- 複数デバイスでの動作確認
- エラーケースのテスト

### 4. セキュリティテスト
- ペネトレーションテスト
- リプレイ攻撃テスト
- セッションハイジャックテスト

## ブラウザ互換性

### サポート対象
- Chrome 67+
- Firefox 60+
- Safari 14+
- Edge 18+

### フォールバック戦略
- WebAuthn非対応ブラウザへの警告表示
- プログレッシブエンハンスメント

## まとめ

このパスキー専用認証システムは：
- **シンプル**: パスワード不要、メールアドレス不要
- **安全**: FIDO2標準準拠、生体認証活用
- **使いやすい**: ワンタップでログイン
- **将来性**: パスキーは次世代認証標準

実装により、ユーザーエクスペリエンスとセキュリティの両面で大幅な改善が期待できます。