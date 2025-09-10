require "test_helper"

class CompanyPolicyTest < ActiveSupport::TestCase
  def setup
    @guest = nil
    @user = Account.new(id: 1, email: "user@example.com")
    @company = companies(:one)
  end

  test "ゲストは企業を閲覧可能" do
    policy = CompanyPolicy.new(@guest, @company)
    assert policy.index?
    assert policy.show?
  end

  test "ゲストは企業を管理不可" do
    policy = CompanyPolicy.new(@guest, @company)
    refute policy.create?
    refute policy.new?
    refute policy.update?
    refute policy.edit?
    refute policy.destroy?
  end

  test "ユーザーは企業を閲覧可能" do
    policy = CompanyPolicy.new(@user, @company)
    assert policy.index?
    assert policy.show?
  end

  test "ユーザーは企業を管理不可" do
    policy = CompanyPolicy.new(@user, @company)
    refute policy.create?
    refute policy.new?
    refute policy.update?
    refute policy.edit?
    refute policy.destroy?
  end

  test "スコープは全企業を返す" do
    scope = CompanyPolicy::Scope.new(@guest, Company)
    assert_equal Company.all, scope.resolve
  end
end
