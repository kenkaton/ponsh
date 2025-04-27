// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@rails/actioncable"

// Hotwire Livereload
const createLivereloadChannel = () => {
  if (typeof window.Turbo !== 'undefined') {
    const cable = ActionCable.createConsumer('/hotwire-livereload');
    cable.subscriptions.create('Hotwire::Livereload::ReloadChannel', {
      connected() {
        console.log('Hotwire Livereload: connected');
      },
      disconnected() {
        console.log('Hotwire Livereload: disconnected');
      },
      received(data) {
        if (data.changed && data.changed.length > 0) {
          console.log('Hotwire Livereload: reloading due to changes in:', data.changed);
          window.Turbo.visit(window.location.href, { action: 'replace' });
        }
      }
    });
  }
};

if (process.env.NODE_ENV !== 'production') {
  window.addEventListener('load', createLivereloadChannel);
}
