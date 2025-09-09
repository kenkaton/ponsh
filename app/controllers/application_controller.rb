class ApplicationController < ActionController::Base
  include Pagy::Backend

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern unless Rails.env.development?

  private

  def current_account
    rodauth.rails_account
  end
  helper_method :current_account

  def authenticate
    rodauth.require_account
  end
end
