require "test_helper"

class ApplicationPolicyTest < ActiveSupport::TestCase
  def setup
    @guest = nil
    @user = Account.new(id: 1, email: "user@example.com")
    @record = Brand.new(id: 1, name: "Test Brand")
  end

  test "ゲストは閲覧可能だが編集不可" do
    policy = ApplicationPolicy.new(@guest, @record)
    assert policy.index?
    assert policy.show?
    refute policy.create?
    refute policy.update?
    refute policy.destroy?
  end

  test "ユーザーは閲覧可能だが編集不可" do
    policy = ApplicationPolicy.new(@user, @record)
    assert policy.index?
    assert policy.show?
    refute policy.create?
    refute policy.update?
    refute policy.destroy?
  end

  test "スコープは全レコードを返す" do
    scope = ApplicationPolicy::Scope.new(@guest, Brand)
    assert_equal Brand.all, scope.resolve
  end
end
