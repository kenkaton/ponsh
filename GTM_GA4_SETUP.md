# GTM & GA4 設定ガイド

## 概要

このRailsアプリケーションにGoogle Tag Manager (GTM)とGoogle Analytics 4 (GA4)を導入しました。

## 必要な設定

### 1. 環境変数の設定

以下の環境変数を設定する必要があります：

```bash
# 環境変数として設定する場合
export GTM_CONTAINER_ID="GTM-XXXXXXX"
export GA4_MEASUREMENT_ID="G-XXXXXXXXXX"

# 開発環境でGTMを有効にしたい場合（オプション）
export ENABLE_GTM_IN_DEVELOPMENT="true"
```

### 2. Rails Credentialsでの設定（推奨）

```bash
# credentialsファイルを編集
bin/rails credentials:edit

# 以下を追加
google:
  gtm_container_id: "GTM-XXXXXXX"
  ga4_measurement_id: "G-XXXXXXXXXX"
```

## 実装内容

### 1. ヘルパーメソッド

`app/helpers/application_helper.rb`に以下の機能を追加：

- `gtm_enabled?` - GTMが有効かどうかの判定
- `gtm_container_id` - GTMコンテナIDの取得
- `ga4_measurement_id` - GA4測定IDの取得
- `render_gtm_head` - GTM headスクリプトの出力
- `render_gtm_body` - GTM bodyタグの出力

### 2. CSP設定

`config/initializers/content_security_policy.rb`でGTM/GA4関連ドメインを許可：

- googletagmanager.com
- google-analytics.com
- googleapis.com
- gstatic.com

### 3. Stimulusコントローラー

`app/javascript/controllers/gtm_controller.js`で以下のイベントトラッキング機能を提供：

- `pageView()` - ページビュー
- `search()` - 検索イベント
- `viewItem()` - アイテム詳細表示
- `track()` - カスタムイベント

### 4. 実装済みトラッキングイベント

#### ページビュー
- 全ページで自動実行

#### ブランド関連
- ブランド一覧からの詳細表示クリック
- ブランド詳細ページの表示
- 関連ブランドへのクリック
- 酒蔵詳細へのクリック

#### 検索
- ブランド検索の実行

## GTM設定

### 1. GTMコンテナでの推奨設定

以下のタグを設定することを推奨：

```javascript
// GA4設定タグ
gtag('config', 'G-XXXXXXXXXX', {
  page_title: '{{Page Title}}',
  page_location: '{{Page URL}}'
});

// カスタムイベント用トリガー
// トリガー名: custom_event
// トリガータイプ: カスタムイベント
// イベント名: custom_event
```

### 2. 推奨GA4イベント

- `page_view` - ページビュー
- `search` - 検索
- `view_item` - アイテム詳細表示
- `view_brand_from_list` - ブランド一覧からの詳細表示
- `view_related_brand` - 関連ブランドの表示
- `view_company` - 酒蔵詳細の表示

## テスト方法

### 1. 開発環境での確認

```bash
# 開発環境でGTMを有効化
export ENABLE_GTM_IN_DEVELOPMENT="true"
bin/dev
```

### 2. ブラウザでの確認

1. ブラウザの開発者ツールを開く
2. ConsoleタブでdataLayerを確認: `console.log(dataLayer)`
3. GTM Preview modeを使用

### 3. GA4での確認

1. GA4のリアルタイムレポートで確認
2. DebugViewでイベントの詳細確認

## 注意事項

### プライバシー

- Cookie使用の同意取得が必要な場合があります
- プライバシーポリシーの更新を忘れずに

### パフォーマンス

- デフォルトで本番環境のみ有効
- 開発環境では明示的に有効化が必要

### セキュリティ

- CSPポリシーが適切に設定済み
- nonceを使用したスクリプト実行

## トラブルシューティング

### GTMが読み込まれない場合

1. 環境変数/credentialsの設定を確認
2. CSPポリシーの設定を確認
3. ブラウザの広告ブロッカーを確認

### イベントが送信されない場合

1. dataLayerの存在確認: `console.log(window.dataLayer)`
2. Stimulusコントローラーの読み込み確認
3. GTM Preview modeでタグの発火確認

### パフォーマンス問題

- GTMコンテナに含まれるタグ数を最小限に
- 不要なトリガーを削除
- タグの読み込みタイミングを調整
