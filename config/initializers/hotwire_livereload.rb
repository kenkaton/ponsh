if Rails.env.development?
  # WebsocketモードのLiveReloadを有効化
  Rails.application.config.hotwire_livereload.enabled = true

  # 監視するファイルパス
  Rails.application.config.hotwire_livereload.listen_paths = [
    Rails.root.join("app/views"),
    Rails.root.join("app/assets"),
    Rails.root.join("app/javascript"),
    Rails.root.join("app/helpers")
  ]

  # ブラウザリロードの遅延（秒）
  Rails.application.config.hotwire_livereload.reload_delay = 0.2

  # 特定のファイル変更時に強制的にリロード
  Rails.application.config.hotwire_livereload.force_reload_paths = [
    Rails.root.join("app/assets/builds/tailwind.css")
  ]
end
