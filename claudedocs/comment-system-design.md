# コメントシステム設計

## 要求仕様分析

### 基本要件
- ログイン済みユーザーのみが銘柄（Brand）にコメント投稿可能
- 自身が投稿したコメントのみ更新・削除可能
- 全ユーザーがコメント閲覧可能（ログイン不要）
- 将来的に他のエンティティ（Product、Company等）にもコメント機能拡張予定

### 既存システム分析

#### 認証・認可システム
- **認証**: Rodauth + Account モデル
- **認可**: Pundit（段階的導入中、開発環境では`ENABLE_PUNDIT=true`で有効化）
- **ユーザーモデル**: `Account`クラス（display_name、status等）

#### ポリモーフィック関連の既存パターン
```ruby
# 既存のポリモーフィック関連
Address      - addressable (Company等)
Contact      - contactable (Company等)
GoogleMap    - gmappable (Company等)
AwardWinner  - winner (Brand, Product, Company)
EcListing    - listable (Brand, Product等)
```

## 確定仕様

### 1. **コメント階層構造**
- **フラットなコメント**: ネストなし、投稿日時順の単純な構造
- 返信機能は将来実装検討（現在は不要）

### 2. **表示順序とページネーション**
- **表示順序**: 新しい順（created_at DESC）
- **ページネーション**: 20件/ページ（pagy使用）
- 並び替えオプションは現在不要

### 3. **コメント内容の制限**
- **テキスト形式**: プレーンテキストのみ
- **文字数制限**: 1000文字以下
- **禁止ワード**: 将来実装（現在は基本的なバリデーションのみ）
- **画像添付**: 将来実装（現在は不要）

### 4. **モデレーション機能**
- **管理機能**: 将来実装（現在は自分のコメント削除のみ）
- **報告機能**: 将来実装
- **編集履歴**: 簡易的な編集日時記録のみ

### 5. **通知機能**
- **通知**: 実装しない

### 6. **パフォーマンス対応**
- **N+1問題対策**: includes等の基本的な最適化
- **カウンター機能**: コメント数表示
- **キャッシュ**: 現在は不要

## 提案する初期実装仕様

### データベース設計

```ruby
# Migration
class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :account, null: false, foreign_key: true, comment: "コメント投稿者"
      t.references :commentable, null: false, polymorphic: true, comment: "コメント対象（Brand, Product等）"
      t.text :body, null: false, comment: "コメント本文"
      t.datetime :edited_at, comment: "最終編集日時"
      
      t.timestamps
      
      # インデックス
      t.index [:commentable_type, :commentable_id, :created_at], 
              name: "index_comments_on_commentable_and_created_at"
      t.index [:account_id, :created_at],
              name: "index_comments_on_account_and_created_at"
    end
  end
end
```

### モデル設計

```ruby
# app/models/comment.rb
class Comment < ApplicationRecord
  belongs_to :account
  belongs_to :commentable, polymorphic: true
  
  validates :body, presence: true, length: { minimum: 1, maximum: 1000 }
  
  scope :recent, -> { order(created_at: :desc) }
  scope :for_commentable, ->(commentable) { where(commentable: commentable) }
  
  def edited?
    edited_at.present?
  end
end

# app/models/brand.rb
class Brand < ApplicationRecord
  # 既存のコード...
  has_many :comments, as: :commentable, dependent: :destroy
  
  def comments_count
    comments.count
  end
end

# app/models/account.rb  
class Account < ApplicationRecord
  # 既存のコード...
  has_many :comments, dependent: :destroy
end
```

### 認可設計（Pundit）

```ruby
# app/policies/comment_policy.rb
class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # すべてのコメントが閲覧可能
      scope
    end
  end

  def show?
    # すべてのコメントが閲覧可能
    true
  end

  def create?
    # ログイン済みユーザーのみ作成可能
    user.present?
  end

  def update?
    # 自分のコメントのみ編集可能
    user.present? && record.account == user
  end

  def destroy?
    # 自分のコメントのみ削除可能
    user.present? && record.account == user
  end
end
```

### コントローラー設計

```ruby
# app/controllers/comments_controller.rb
class CommentsController < ApplicationController
  before_action :authenticate, except: [:index, :show]
  before_action :set_commentable
  before_action :set_comment, only: [:show, :update, :destroy]

  def index
    @comments = policy_scope(Comment)
                  .for_commentable(@commentable)
                  .includes(:account)
                  .recent
    @pagy, @comments = pagy(@comments, limit: 20)
    @comment = Comment.new if current_account
  end

  def create
    @comment = @commentable.comments.build(comment_params)
    @comment.account = current_account
    authorize @comment

    if @comment.save
      redirect_to polymorphic_path(@commentable), notice: 'コメントを投稿しました。'
    else
      redirect_to polymorphic_path(@commentable), alert: @comment.errors.full_messages.join('、')
    end
  end

  def update
    authorize @comment
    
    if @comment.update(comment_params.merge(edited_at: Time.current))
      redirect_to polymorphic_path(@commentable), notice: 'コメントを更新しました。'
    else
      redirect_to polymorphic_path(@commentable), alert: @comment.errors.full_messages.join('、')
    end
  end

  def destroy
    authorize @comment
    @comment.destroy!
    redirect_to polymorphic_path(@commentable), notice: 'コメントを削除しました。'
  end

  private

  def set_commentable
    # ポリモーフィック対応
    if params[:brand_id]
      @commentable = Brand.find(params[:brand_id])
    elsif params[:product_id]
      @commentable = Product.find(params[:product_id])
    # 将来的に他のエンティティも追加
    else
      raise ActiveRecord::RecordNotFound
    end
  end

  def set_comment
    @comment = @commentable.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
```

### ルーティング設計

```ruby
# config/routes.rb
Rails.application.routes.draw do
  resources :brands do
    resources :comments, except: [:new, :edit]
  end
  
  # 将来的に追加
  # resources :products do
  #   resources :comments, except: [:new, :edit]
  # end
end
```

## 実装推奨順序

1. **Migration作成・実行**
2. **Comment model作成・テスト**
3. **CommentPolicy作成・テスト**
4. **CommentsController作成・テスト**
5. **ルーティング設定**
6. **ビューテンプレート作成**
7. **Brand詳細ページにコメント表示追加**

## 将来拡張の考慮点

- **他エンティティ対応**: Product、Company等への拡張
- **返信機能**: parent_comment_id追加でネスト構造対応
- **禁止ワードフィルタ**: 不適切コンテンツの自動検出
- **画像添付機能**: Active Storageを使用した画像投稿
- **管理機能**: Admin::CommentsController、通報機能
- **モデレーション**: 論理削除、編集履歴の詳細追跡
- **パフォーマンス向上**: カウンターキャッシュ、フラグメントキャッシュ
- **API対応**: JSON形式での操作