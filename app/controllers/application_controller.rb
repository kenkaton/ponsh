class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pundit::Authorization

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern unless Rails.env.development?

  # Pundit設定
  after_action :verify_authorized, except: [ :index, :show ], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: [ :index ], unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :access_denied

  private

  def current_account
    rodauth.rails_account
  end
  helper_method :current_account

  # Pundit user method override
  def pundit_user
    current_account
  end

  def authenticate
    rodauth.require_account
  end

  def access_denied(exception)
    policy_name = exception.policy.class.to_s.underscore
    flash[:alert] = t("pundit.#{policy_name}.#{exception.query}",
                     default: t("pundit.default"))
    redirect_to(request.referrer || root_path)
  end

  # 段階的導入用の一時メソッド
  def skip_pundit?
    Rails.env.development? && ENV["ENABLE_PUNDIT"] != "true"
  end
end
