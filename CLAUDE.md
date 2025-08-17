# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## アプリケーション概要

Ponshは日本の日本酒・アルコールブランドとその受賞歴を管理するRails 8.0.1アプリケーションです。企業、ブランド、商品、コンテスト、受賞情報を包括的に管理します。

## 開発環境のセットアップとコマンド

### 初期セットアップ
```bash
bin/setup  # 依存関係のインストール、データベース準備、開発サーバー起動
```

### 日常的に使用するコマンド
```bash
bin/dev                    # 開発サーバー起動（Rails + Tailwind CSS watcher）
bin/rails console          # Railsコンソール
bin/rails db:migrate       # マイグレーション実行
bin/rails db:seed          # シードデータ投入
bin/rails test             # テスト実行
bin/rails test TEST=test/models/brand_test.rb  # 特定のテストファイル実行
bin/rubocop               # コードスタイルチェック（Rails Omakase）
bin/brakeman              # セキュリティスキャン
```

### アセット管理
```bash
bin/rails tailwindcss:watch  # Tailwind CSSの変更を監視
bin/importmap pin [package]  # JavaScriptパッケージ追加
```

## アーキテクチャとコード構造

### 主要なモデルと関連

1. **Company（企業）**
   - ブランドを複数所有
   - ポリモーフィック関連：address, contact, google_map
   - company_status_historiesで状態変更を追跡
   - award_winnersを通じて受賞可能

2. **Brand（ブランド）**
   - 企業に属する
   - 商品を複数所有
   - 複雑な検索機能（優先順位付き）
   - PublicIdCreatable concernを使用
   - award_winnersを通じて受賞可能

3. **Product（商品）**
   - ブランドに属する
   - PublicIdCreatable concernを使用
   - award_winnersを通じて受賞可能

4. **受賞システム**
   - Contest → ContestEdition → Award → AwardWinner（ポリモーフィック）
   - AwardWinnerは商品、ブランド、企業のいずれとも関連可能

### 重要な設計パターン

1. **ポリモーフィック関連の多用**
   - Address, Contact, GoogleMap, AwardWinnerで使用
   - 柔軟なデータ構造を実現

2. **検索機能（Brand.search）**
   - 複数フィールド（名前、読み、企業名など）を横断検索
   - 優先順位付きで結果を返す

3. **PublicIdCreatable concern**
   - ユーザー向けの公開IDを生成
   - Brand, Productで使用

### フロントエンド構成

- **CSS**: Tailwind CSS（JITモード）
- **JavaScript**: Importmap-rails + Hotwire（Turbo + Stimulus）
- **リアルタイム更新**: Hotwire Livereload（開発環境）
- **PWA対応**: manifest.jsonとservice-worker.js

### データベース構成

- **本番環境**: 複数データベース構成
  - プライマリ：ponsh_production
  - キャッシュ：ponsh_production_cache（Solid Cache）
  - ジョブキュー：ponsh_production_queue（Solid Queue）
  - WebSocket：ponsh_production_cable（Solid Cable）

### テスト戦略

- **フレームワーク**: Minitest
- **システムテスト**: Capybara + Selenium WebDriver
- **CI/CD**: GitHub Actionsで自動実行
  - セキュリティスキャン（Brakeman）
  - コードスタイルチェック（RuboCop）
  - 全テストスイート実行

## 開発時の注意点

1. **日本語対応**
   - デフォルトロケール：`:ja`
   - タイムゾーン：Tokyo
   - jp_prefecture gemで都道府県処理

2. **シードデータ**
   - db/seeds/以下に01.rb〜47.rbの分割ファイル
   - contests/ディレクトリにコンテストデータパーサー

3. **デプロイ**
   - Kamalでコンテナデプロイ対応
   - Thrusterでパフォーマンス最適化

4. **開発ツール**
   - Foremanでプロセス管理
   - Dockerサポート（Dockerfile, docker-entrypoint）