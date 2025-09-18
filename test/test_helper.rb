ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
  end
end

# Rodauth test helpers for integration tests
class ActionDispatch::IntegrationTest
  # ログインヘルパー（current_accountメソッドをスタブ）
  def login(account)
    # ApplicationControllerのcurrent_accountメソッドを一時的にオーバーライド
    ApplicationController.class_eval do
      define_method :current_account do
        account
      end

      define_method :authenticate do
        # 認証をスキップ
      end
    end
  end

  # ログアウトヘルパー
  def logout
    # current_accountをnilに設定し、authenticateメソッドを元の動作に戻す
    ApplicationController.class_eval do
      define_method :current_account do
        nil
      end

      define_method :authenticate do
        rodauth.require_account
      end
    end
  end
end
