# Pundit認可システム設計書

## 概要

Ponshアプリケーション用のPundit認可システム設計仕様書です。
認証（Authentication）はRodauth、認可（Authorization）はPunditによる責任分離アーキテクチャを採用します。

## 現状分析

### 現在のルート構成
- `brands#index`, `brands#show` (公開)
- `companies#show` (公開)
- Full CRUD (brands, companies) - コントローラーには実装済みだがルートは制限

### 既存コントローラー特徴
- CRUDアクションは完全実装済み
- `current_account` による認証は利用可能
- 認可チェックは未実装

## アーキテクチャ設計

### 基本方針

**段階的導入戦略:**
1. **Phase 1**: Punditセットアップ + 現状維持（公開アクセス）
2. **Phase 2**: 管理機能ルート開放 + 基本認可
3. **Phase 3**: コメント機能追加時の詳細認可

**認可レベル:**
- **Guest**: 閲覧のみ（index, show）
- **User**: コメント投稿・編集・削除
- **Admin**: 全データの管理（今後実装予定）

### 権限マトリクス

```
Action    | Guest | User  | Admin
----------|-------|-------|-------
index     | ✓     | ✓     | ✓
show      | ✓     | ✓     | ✓
create    | ✗     | ✗     | ✓
edit      | ✗     | ✗     | ✓
update    | ✗     | ✗     | ✓
destroy   | ✗     | ✗     | ✓
```

### 認可階層構造

```
ApplicationPolicy (基底クラス)
├── BrandPolicy
├── CompanyPolicy  
├── ProductPolicy (将来)
└── CommentPolicy (将来)
```

## Policyクラス設計

### ApplicationPolicy（基底クラス）

```ruby
# app/policies/application_policy.rb
class ApplicationPolicy
  attr_reader :account, :record

  def initialize(account, record)
    @account = account
    @record = record
  end

  # 閲覧系アクション（全ユーザー開放）
  def index?
    true
  end

  def show?
    true
  end

  # 作成・編集系アクション（将来の管理者機能用）
  def create?
    admin?
  end

  def new?
    create?
  end

  def update?
    admin?
  end

  def edit?
    update?
  end

  def destroy?
    admin?
  end

  # Scope（一覧取得の制御）
  class Scope
    def initialize(account, scope)
      @account = account
      @scope = scope
    end

    def resolve
      # デフォルトは全件公開
      scope.all
    end

    private

    attr_reader :account, :scope
  end

  private

  def admin?
    # 現在は未実装、将来的にAccount#admin?を追加予定
    false
  end

  def user?
    account.present?
  end
end
```

### 個別Policyクラス

#### BrandPolicy

```ruby
# app/policies/brand_policy.rb
class BrandPolicy < ApplicationPolicy
  # 現在は親クラスの実装をそのまま継承
  # 将来的に以下の拡張を想定:
  # - 所有企業のオーナーによる編集権限
  # - ブランド固有の公開設定
  
  class Scope < ApplicationPolicy::Scope
    def resolve
      # 現在は全ブランド公開
      scope.all
    end
  end
end
```

#### CompanyPolicy

```ruby
# app/policies/company_policy.rb  
class CompanyPolicy < ApplicationPolicy
  # 現在は親クラスの実装をそのまま継承
  # 将来的に以下の拡張を想定:
  # - 企業オーナーによる自社情報編集
  # - 企業固有の公開設定
  
  class Scope < ApplicationPolicy::Scope
    def resolve
      # 現在は全企業公開
      scope.all
    end
  end
end
```

## コントローラー統合設計

### ApplicationController拡張

```ruby
class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pundit::Authorization

  # Pundit設定
  after_action :verify_authorized, except: [:index, :show]
  after_action :verify_policy_scoped, only: [:index]

  rescue_from Pundit::NotAuthorizedError, with: :access_denied

  private

  def current_account
    rodauth.rails_account
  end
  helper_method :current_account

  def authenticate
    rodauth.require_account
  end

  def access_denied
    flash[:alert] = t('pundit.default')
    redirect_to(request.referrer || root_path)
  end
end
```

### 個別コントローラー対応例

#### BrandsController

```ruby
class BrandsController < ApplicationController
  def index
    @pagy, @brands = pagy(policy_scope(Brand).search(@query))
    # 既存ロジック維持
  end

  def show
    authorize @brand
    # 既存ロジック維持
  end

  def create
    @brand = Brand.new(brand_params)
    authorize @brand
    # 既存ロジック維持
  end
  
  def edit
    authorize @brand
    # 既存ロジック維持
  end

  def update
    authorize @brand
    # 既存ロジック維持
  end

  def destroy
    authorize @brand
    # 既存ロジック維持
  end
end
```

## 国際化対応

```yaml
# config/locales/pundit.ja.yml
ja:
  pundit:
    default: 'この操作を実行する権限がありません。'
    brand_policy:
      create?: 'ブランドを作成する権限がありません。'
      update?: 'このブランドを編集する権限がありません。'
      destroy?: 'このブランドを削除する権限がありません。'
    company_policy:
      create?: '企業を作成する権限がありません。'  
      update?: 'この企業情報を編集する権限がありません。'
      destroy?: 'この企業を削除する権限がありません。'
```

## 段階的導入計画

### Phase 1: Pundit基盤構築（即座実装）

**実装ステップ:**
1. `gem 'pundit'` をGemfileに追加
2. `rails generate pundit:install` で初期設定
3. ApplicationPolicy作成（寛容な権限設定）
4. ApplicationController にPundit統合
5. 既存コントローラーに最小限の認可チェック追加

**Phase 1の成果物:**
- Pundit基盤が整備済み
- 既存機能の動作は完全に維持
- 将来の権限制御の準備完了

### Phase 2: 管理機能開放（必要に応じて実装）

**実装内容:**
- ルート開放: brands/companies の create, edit, update, destroy
- Admin判定メソッドの実装
- 管理画面用のナビゲーション追加

**条件:**
- Account モデルに admin フラグ追加
- 管理者機能が必要になった時点で実装

### Phase 3: コメント機能対応（将来実装）

**設計方針:**
- CommentPolicy で詳細な認可制御
- ユーザー自身のコメントのみ編集/削除可能
- 管理者は全コメント管理可能

**CommentPolicy 設計案:**

```ruby
# app/policies/comment_policy.rb (将来実装)
class CommentPolicy < ApplicationPolicy
  def create?
    user?
  end

  def update?
    owner_or_admin?
  end

  def destroy?
    owner_or_admin?
  end

  private

  def owner_or_admin?
    admin? || (user? && record.account_id == account.id)
  end
end
```

## 実装コマンド

### 導入手順

```bash
# 1. Gem追加
echo 'gem "pundit"' >> Gemfile
bundle install

# 2. 初期設定
rails generate pundit:install

# 3. Policyクラス生成
rails generate pundit:policy Brand  
rails generate pundit:policy Company

# 4. 国際化ファイル作成
# config/locales/pundit.ja.yml を手動作成

# 5. テスト生成
rails generate pundit:policy_test Brand
rails generate pundit:policy_test Company
```

## テスト戦略

### Policyテスト例

```ruby
# test/policies/brand_policy_test.rb
require 'test_helper'

class BrandPolicyTest < ActiveSupport::TestCase
  def setup
    @guest = nil
    @user = accounts(:user)
    @admin = accounts(:admin) # 将来実装
    @brand = brands(:sake_brand)
  end

  test "guest can view brands" do
    assert BrandPolicy.new(@guest, @brand).index?
    assert BrandPolicy.new(@guest, @brand).show?
  end

  test "guest cannot manage brands" do
    refute BrandPolicy.new(@guest, @brand).create?
    refute BrandPolicy.new(@guest, @brand).update?
    refute BrandPolicy.new(@guest, @brand).destroy?
  end

  test "user can view brands" do
    assert BrandPolicy.new(@user, @brand).index?
    assert BrandPolicy.new(@user, @brand).show?
  end

  test "user cannot manage brands" do
    refute BrandPolicy.new(@user, @brand).create?
    refute BrandPolicy.new(@user, @brand).update?
    refute BrandPolicy.new(@user, @brand).destroy?
  end

  # 将来のAdmin機能テスト
  # test "admin can manage brands" do
  #   assert BrandPolicy.new(@admin, @brand).create?
  #   assert BrandPolicy.new(@admin, @brand).update?
  #   assert BrandPolicy.new(@admin, @brand).destroy?
  # end
end
```

## 導入の利点

### 即座の利点
- 認可基盤が整備され、将来の機能拡張が容易
- Pundit標準パターンでメンテナンス性向上  
- テスタブルな認可ロジック

### 将来の拡張性
- コメント機能追加時の詳細権限制御
- 企業オーナーによる自社データ管理
- 管理者機能の段階的追加

### Rodauth認証との親和性
- `current_account` をそのまま活用
- 既存の認証フローを変更不要
- 責任分離による保守性向上

## まとめ

この設計により、現在の公開機能は完全に維持しながら、将来のコメント機能や管理機能に対する認可基盤が整備されます。Rodauth認証と組み合わせることで、安全で拡張性の高いシステムが構築できます。

段階的導入により、リスクを最小化しつつ、必要な時に必要な認可機能を追加していくことが可能です。