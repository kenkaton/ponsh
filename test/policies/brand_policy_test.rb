require "test_helper"

class BrandPolicyTest < ActiveSupport::TestCase
  def setup
    @guest = nil
    @user = Account.new(id: 1, email: "user@example.com")
    @brand = brands(:one)
  end

  test "ゲストは銘柄を閲覧可能" do
    policy = BrandPolicy.new(@guest, @brand)
    assert policy.index?
    assert policy.show?
  end

  test "ゲストは銘柄を管理不可" do
    policy = BrandPolicy.new(@guest, @brand)
    refute policy.create?
    refute policy.new?
    refute policy.update?
    refute policy.edit?
    refute policy.destroy?
  end

  test "ユーザーは銘柄を閲覧可能" do
    policy = BrandPolicy.new(@user, @brand)
    assert policy.index?
    assert policy.show?
  end

  test "ユーザーは銘柄を管理不可" do
    policy = BrandPolicy.new(@user, @brand)
    refute policy.create?
    refute policy.new?
    refute policy.update?
    refute policy.edit?
    refute policy.destroy?
  end

  test "スコープは全銘柄を返す" do
    scope = BrandPolicy::Scope.new(@guest, Brand)
    assert_equal Brand.all, scope.resolve
  end
end
