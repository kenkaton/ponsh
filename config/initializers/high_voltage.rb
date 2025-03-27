# High Voltage Configuration
HighVoltage.configure do |config|
  # デフォルトのルート
  # config.home_page = 'home'

  # レイアウトを指定する場合（デフォルトは application レイアウト）
  # config.layout = 'pages'

  # ルートURLのパターン (デフォルトは /pages/:id)
  config.route_drawer = HighVoltage::RouteDrawers::Root # これを設定すると /terms や /privacy となる

  # HTMLの拡張子を隠す（デフォルトは false）
  config.route_drawer = HighVoltage::RouteDrawers::Root
end
