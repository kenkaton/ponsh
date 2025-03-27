# frozen_string_literal: true

# Pagy の設定ファイル
# https://github.com/ddnexus/pagy/blob/master/lib/config/pagy.rb

# ページあたりのアイテム数 (デフォルト: 20)
Pagy::DEFAULT[:items] = 25

# API用のヘッダー
require "pagy/extras/headers"
Pagy::DEFAULT[:headers] = { page: "Current-Page", items: "Page-Items", count: "Total-Count", pages: "Total-Pages" }

# Tailwindエクストラ
require "pagy/extras/tailwind"

# Pagy::Backend をコントローラーで使用可能にする
require "pagy/backend"
Rails.application.config.to_prepare do
  ActionController::Base.include Pagy::Backend
end

# Pagy::Frontend をビューで使用可能にする
require "pagy/frontend"
Rails.application.config.to_prepare do
  ActionView::Base.include Pagy::Frontend
end
