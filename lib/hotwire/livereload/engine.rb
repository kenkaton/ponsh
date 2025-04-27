require_relative "file_watcher"

module Hotwire
  module Livereload
    class Engine < ::Rails::Engine
      isolate_namespace Hotwire::Livereload

      config.hotwire_livereload = ActiveSupport::OrderedOptions.new
      config.hotwire_livereload.enabled = Rails.env.development?
      config.hotwire_livereload.reload_delay = 0.1
      config.hotwire_livereload.listen_paths = []
      config.hotwire_livereload.force_reload_paths = []

      initializer "hotwire_livereload.configuration" do |app|
        if app.config.hotwire_livereload.enabled
          app.config.assets.paths << File.expand_path("../../../app/assets", __dir__)
          app.config.after_initialize do
            if app.config.hotwire_livereload.listen_paths.any?
              @watcher = Hotwire::Livereload::FileWatcher.new(
                paths: app.config.hotwire_livereload.listen_paths,
                force_reload_paths: app.config.hotwire_livereload.force_reload_paths,
                reload_delay: app.config.hotwire_livereload.reload_delay
              )

              @watcher.start do |changed_files, force_reload|
                ActionCable.server.broadcast "hotwire-reload", {
                  changed: changed_files,
                  force_reload: force_reload
                }
              end
            end
          end
        end
      end
    end
  end
end
