require 'test_helper'

class CommentPolicyTest < ActiveSupport::TestCase
  def setup
    @user = accounts(:one)
    @other_user = accounts(:two)
    @comment = comments(:one)  # owned by @user
    @other_comment = comments(:two)  # owned by @other_user
  end

  def test_scope_allows_all_comments
    policy_scope = CommentPolicy::Scope.new(@user, Comment.all).resolve
    assert_includes policy_scope, @comment
    assert_includes policy_scope, @other_comment
  end

  def test_show_allows_all_users_including_guests
    # Logged in user
    assert CommentPolicy.new(@user, @comment).show?
    assert CommentPolicy.new(@user, @other_comment).show?
    
    # Guest user (nil)
    assert CommentPolicy.new(nil, @comment).show?
    assert CommentPolicy.new(nil, @other_comment).show?
  end

  def test_create_requires_logged_in_user
    # Logged in user can create
    assert CommentPolicy.new(@user, Comment.new).create?
    
    # Guest user cannot create
    assert_not CommentPolicy.new(nil, Comment.new).create?
  end

  def test_update_allows_only_comment_owner
    # Owner can update own comment
    assert CommentPolicy.new(@user, @comment).update?
    
    # Other users cannot update
    assert_not CommentPolicy.new(@other_user, @comment).update?
    
    # Guest user cannot update
    assert_not CommentPolicy.new(nil, @comment).update?
  end

  def test_destroy_allows_only_comment_owner
    # Owner can destroy own comment
    assert CommentPolicy.new(@user, @comment).destroy?
    
    # Other users cannot destroy
    assert_not CommentPolicy.new(@other_user, @comment).destroy?
    
    # Guest user cannot destroy
    assert_not CommentPolicy.new(nil, @comment).destroy?
  end
end
