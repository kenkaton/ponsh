module Hotwire
  module Livereload
    class ReloadChannel < ApplicationCable::Channel
      def subscribed
        stream_from "hotwire-reload"
      end

      def unsubscribed
        # Any cleanup needed when channel is unsubscribed
      end
    end
  end
end
