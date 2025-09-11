class RodauthController < ApplicationController
  # Used by Rodauth for rendering views, CSRF protection, running any
  # registered action callbacks and rescue handlers, instrumentation etc.

  # Skip Pundit callbacks for authentication actions
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  # Controller callbacks and rescue handlers will run around Rodauth endpoints.
  # before_action :verify_captcha, only: :login, if: -> { request.post? }
  # rescue_from("SomeError") { |exception| ... }

  # Use rodauth layout for all authentication pages
  layout "rodauth"
end
