module Hotwire
  module Livereload
    class FileWatcher
      def initialize(paths: [], force_reload_paths: [], reload_delay: 0.1)
        @paths = paths
        @force_reload_paths = force_reload_paths
        @reload_delay = reload_delay
        @callback = nil
      end

      def start(&block)
        # Only load listen gem in development
        return unless Rails.env.development?

        begin
          require "listen"
        rescue LoadError
          Rails.logger.warn "Listen gem not available, skipping file watching"
          return
        end

        @callback = block
        @listener = Listen.to(*@paths, latency: 0.2, wait_for_delay: 0.2) do |modified, added, removed|
          changed_files = modified + added + removed

          # 変更されたファイルを表示
          if changed_files.any?
            force_reload = changed_files.any? { |file| @force_reload_paths.any? { |pattern| File.fnmatch?(pattern, file) } }
            puts "Hotwire::Livereload detected changes in: #{changed_files.join(', ')}"

            # コールバックを遅延実行
            Thread.new do
              sleep @reload_delay
              @callback.call(changed_files, force_reload) if @callback
            end
          end
        end

        @listener.start
      end

      def stop
        @listener&.stop
      end
    end
  end
end
