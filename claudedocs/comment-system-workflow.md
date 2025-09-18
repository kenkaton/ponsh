# コメントシステム実装ワークフロー

## 実装戦略

### アプローチ
- **戦略**: Systematic（段階的・安全な実装）
- **深度**: Normal（完全な機能実装 + テスト）
- **並行処理**: 一部のタスクで並行実行を活用

### 品質ゲート
- 各段階でテスト実行・型チェック・lint確認
- コミット前の品質確認
- 段階的な機能確認

## フェーズ1: 基盤整備【約30分】

### 1.1 データベース基盤
**依存関係**: なし  
**並行実行**: 可能

#### タスク
1. **Migration作成**
   ```bash
   bin/rails generate migration CreateComments
   ```

2. **Migration実装**
   - Commentテーブル設計実装
   - インデックス設定
   - 外部キー制約

3. **Migration実行・確認**
   ```bash
   bin/rails db:migrate
   bin/rails db:rollback && bin/rails db:migrate  # 確認
   ```

#### 品質ゲート
- [ ] Migrationエラーなく実行完了
- [ ] schema.rbに正しい構造が反映
- [ ] rollback/migrate動作確認

### 1.2 モデル層実装
**依存関係**: Migration完了後  
**並行実行**: 不可

#### タスク
1. **Commentモデル作成**
   - `app/models/comment.rb`作成
   - バリデーション実装
   - スコープ定義
   - アソシエーション設定

2. **既存モデル更新**
   - Brand model: `has_many :comments`追加
   - Account model: `has_many :comments`追加

3. **モデルテスト作成・実行**
   ```bash
   bin/rails generate test_unit:model Comment
   bin/rails test test/models/comment_test.rb
   ```

#### 品質ゲート
- [ ] Commentモデルテスト全passing
- [ ] アソシエーション動作確認
- [ ] バリデーション動作確認

## フェーズ2: 認可システム【約20分】

### 2.1 Policy実装
**依存関係**: モデル層完了後  
**並行実行**: 不可

#### タスク
1. **CommentPolicy作成**
   ```bash
   bin/rails generate pundit:policy Comment
   ```

2. **Policy実装**
   - Scope設定
   - 各アクション認可ロジック
   - テストケース作成

3. **Policyテスト実行**
   ```bash
   bin/rails test test/policies/comment_policy_test.rb
   ```

#### 品質ゲート
- [ ] CommentPolicyテスト全passing
- [ ] 認可ロジック動作確認
- [ ] Scope動作確認

## フェーズ3: コントローラー層【約40分】

### 3.1 ルーティング設定
**依存関係**: なし  
**並行実行**: 可能

#### タスク
1. **routes.rb更新**
   - nested routesでcomments追加
   - 不要なアクション除外（new, edit）

2. **ルーティング確認**
   ```bash
   bin/rails routes | grep comment
   ```

### 3.2 コントローラー実装
**依存関係**: Policy完了後  
**並行実行**: 不可

#### タスク
1. **CommentsController作成**
   ```bash
   bin/rails generate controller Comments
   ```

2. **コントローラー実装**
   - 全アクション実装（index, create, update, destroy）
   - before_action設定
   - 認証・認可組み込み
   - エラーハンドリング

3. **コントローラーテスト実装・実行**
   ```bash
   bin/rails test test/controllers/comments_controller_test.rb
   ```

#### 品質ゲート
- [ ] コントローラーテスト全passing
- [ ] 認証・認可動作確認
- [ ] エラーハンドリング確認

## フェーズ4: フロントエンド実装【約60分】

### 4.1 ビューテンプレート作成
**依存関係**: コントローラー完了後  
**並行実行**: 一部可能

#### 並行タスクA: コメント表示
1. **コメント一覧partial**
   - `app/views/comments/_list.html.erb`
   - ページネーション組み込み
   - レスポンシブデザイン

2. **コメント単体partial**
   - `app/views/comments/_comment.html.erb`
   - 編集・削除ボタン（条件付き表示）
   - 投稿日時・編集日時表示

#### 並行タスクB: フォーム作成
1. **投稿フォームpartial**
   - `app/views/comments/_form.html.erb`
   - バリデーションエラー表示
   - 文字数カウンター（JavaScript）

2. **編集フォーム実装**
   - インライン編集またはモーダル
   - StimulusJS活用

### 4.2 Brand詳細ページ統合
**依存関係**: ビューテンプレート完了後  
**並行実行**: 不可

#### タスク
1. **Brand show viewにコメント表示追加**
   - コメント数表示
   - コメント一覧組み込み
   - 投稿フォーム組み込み

2. **CSS/JavaScript調整**
   - Tailwind CSS適用
   - Hotwire Turbo対応

#### 品質ゲート
- [ ] Brand詳細ページでコメント表示確認
- [ ] 投稿・編集・削除操作確認
- [ ] レスポンシブデザイン確認

## フェーズ5: 統合テスト・品質確認【約30分】

### 5.1 システムテスト実装
**依存関係**: フロントエンド完了後  
**並行実行**: 不可

#### タスク
1. **システムテスト作成**
   ```bash
   bin/rails generate system_test Comments
   ```

2. **E2Eシナリオ実装**
   - ログイン→コメント投稿→編集→削除
   - 未ログインユーザーの閲覧
   - 権限チェック

3. **システムテスト実行**
   ```bash
   bin/rails test:system
   ```

### 5.2 最終品質確認
**依存関係**: システムテスト完了後  
**並行実行**: 一部可能

#### 並行タスクA: コード品質
```bash
bin/rubocop app/models/comment.rb app/controllers/comments_controller.rb app/policies/comment_policy.rb
```

#### 並行タスクB: セキュリティ
```bash
bin/brakeman --only-files app/models/comment.rb,app/controllers/comments_controller.rb
```

#### 並行タスクC: 全テスト実行
```bash
bin/rails test
```

#### 品質ゲート
- [ ] 全テストpassing
- [ ] RuboCop違反なし
- [ ] Brakemanセキュリティ問題なし
- [ ] 手動動作確認完了

## 実装タイムライン

```
時間軸: 0----30----50----90----150----180分
フェーズ: [基盤][認可][コントローラー][フロント][テスト]
        [1.1-1.2][2.1][3.1+3.2][4.1+4.2][5.1+5.2]
```

### 並行実行ポイント
- **フェーズ1.1**: Migration作業（単独実行）
- **フェーズ3.1**: ルーティング（並行可能）
- **フェーズ4.1**: ビューpartial作成（2並行）
- **フェーズ5.2**: 品質確認（3並行）

## 実装チェックリスト

### 機能要件
- [ ] ログイン済みユーザーのみコメント投稿可能
- [ ] 自分のコメントのみ編集・削除可能
- [ ] 全ユーザーがコメント閲覧可能
- [ ] 新しい順でコメント表示
- [ ] 20件/ページのページネーション
- [ ] 1000文字以下の制限

### 技術要件
- [ ] ポリモーフィック関連でBrandに紐付け
- [ ] Punditで認可制御
- [ ] Pagyでページネーション
- [ ] N+1問題対策（includes）
- [ ] Hotwire対応

### 品質要件
- [ ] モデルテスト充実
- [ ] コントローラーテスト充実
- [ ] システムテスト動作
- [ ] RuboCop準拠
- [ ] Brakeman安全

### セキュリティ要件
- [ ] 認証チェック適切
- [ ] 認可制御適切
- [ ] パラメーター許可適切
- [ ] XSS対策適切

## トラブルシューティング

### よくある問題
1. **Migration失敗**
   - 外部キー制約エラー → Account/Brandテーブル存在確認
   - インデックス名重複 → 名前調整

2. **Pundit認可エラー**
   - `ENABLE_PUNDIT=true`環境変数設定確認
   - ApplicationPolicy継承確認

3. **ルーティングエラー**
   - nested routesの構文確認
   - resourcesの複数形確認

4. **N+1問題**
   - includes(:account)忘れ確認
   - bullet gem併用推奨

### デバッグコマンド
```bash
# ルーティング確認
bin/rails routes | grep comment

# テーブル構造確認
bin/rails db:schema:dump && cat db/schema.rb | grep -A 10 "create_table \"comments\""

# Pundit動作確認
bin/rails console
> CommentPolicy.new(current_user, comment).create?

# パフォーマンス確認
bin/rails console
> Brand.includes(comments: :account).first.comments.to_a
```

## 完了条件

### 定義完了（Definition of Done）
1. **機能実装**: 全要件実装済み
2. **テスト**: 全レベルテスト作成・passing
3. **品質**: RuboCop + Brakeman + 手動確認クリア
4. **文書**: 実装完了報告書作成
5. **デプロイ準備**: Migration安全性確認済み

### 成功メトリクス
- テストカバレッジ: 90%以上
- 実行時間: 予定180分以内
- 品質スコア: 全品質ゲートクリア
- セキュリティ: Brakeman警告ゼロ