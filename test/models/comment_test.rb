require "test_helper"

class CommentTest < ActiveSupport::TestCase
  def setup
    @account = accounts(:one)
    @brand = brands(:one)
    @comment = comments(:one)
  end

  # Basic validation tests
  test "should be valid with valid attributes" do
    assert @comment.valid?
  end

  test "should require body" do
    @comment.body = nil
    assert_not @comment.valid?
    assert_includes @comment.errors[:body], "を入力してください"
  end

  test "should require body to be at least 1 character" do
    @comment.body = ""
    assert_not @comment.valid?
    assert_includes @comment.errors[:body], "は1文字以上で入力してください"
  end

  test "should not allow body longer than 1000 characters" do
    @comment.body = "a" * 1001
    assert_not @comment.valid?
    assert_includes @comment.errors[:body], "は1000文字以内で入力してください"
  end

  test "should allow body with exactly 1000 characters" do
    @comment.body = "a" * 1000
    assert @comment.valid?
  end

  test "should allow body with 1 character" do
    @comment.body = "a"
    assert @comment.valid?
  end

  # Association tests
  test "should belong to account" do
    assert_respond_to @comment, :account
    assert_instance_of Account, @comment.account
  end

  test "should belong to commentable polymorphically" do
    assert_respond_to @comment, :commentable
    assert_instance_of Brand, @comment.commentable
  end

  test "should require account" do
    @comment.account = nil
    assert_not @comment.valid?
    assert @comment.errors[:account].any?
  end

  test "should require commentable" do
    @comment.commentable = nil
    assert_not @comment.valid?
    assert @comment.errors[:commentable].any?
  end

  # Scope tests
  test "should have recent scope that orders by created_at desc" do
    recent_comments = Comment.recent.to_a
    # Should be ordered by created_at desc: three (30 min ago) -> two (1 hour ago) -> one (2 hours ago)
    assert_equal comments(:three), recent_comments.first
    assert_equal comments(:two), recent_comments.second
    assert_equal comments(:one), recent_comments.third
  end

  test "should have for_commentable scope" do
    brand_one = brands(:one)
    brand_comments = Comment.for_commentable(brand_one)
    assert_includes brand_comments, comments(:one)
    assert_includes brand_comments, comments(:two)
    assert_not_includes brand_comments, comments(:three)
  end

  # Instance method tests
  test "edited? should return true when edited_at is present" do
    assert comments(:two).edited?
  end

  test "edited? should return false when edited_at is nil" do
    assert_not comments(:one).edited?
  end

  # Creation tests
  test "should create comment with valid attributes" do
    comment = Comment.new(
      account: @account,
      commentable: @brand,
      body: "テスト用コメントです"
    )
    assert comment.save
    assert_equal @account, comment.account
    assert_equal @brand, comment.commentable
    assert_equal "テスト用コメントです", comment.body
  end

  test "should support different commentable types" do
    # Test with Brand
    brand_comment = Comment.create!(
      account: @account,
      commentable: @brand,
      body: "ブランドコメント"
    )
    assert_equal "Brand", brand_comment.commentable_type
    assert_equal @brand.id, brand_comment.commentable_id
  end

  # Edge case tests
  test "should handle Japanese characters in body" do
    @comment.body = "これは日本語のコメントです。とても美味しいお酒ですね！"
    assert @comment.valid?
    assert @comment.save
  end

  test "should handle special characters in body" do
    @comment.body = "Special chars: !@#$%^&*()_+-=[]{}|;':\",./<>?"
    assert @comment.valid?
    assert @comment.save
  end

  test "should handle newlines in body" do
    @comment.body = "Line 1\nLine 2\nLine 3"
    assert @comment.valid?
    assert @comment.save
    assert_equal "Line 1\nLine 2\nLine 3", @comment.body
  end

  # Timestamp tests
  test "should automatically set created_at and updated_at" do
    comment = Comment.create!(
      account: @account,
      commentable: @brand,
      body: "タイムスタンプテスト"
    )
    assert_not_nil comment.created_at
    assert_not_nil comment.updated_at
  end

  test "should update updated_at when body changes" do
    original_updated_at = @comment.updated_at
    sleep 0.1 # Ensure time difference
    
    @comment.update!(body: "更新されたコメント")
    assert @comment.updated_at > original_updated_at
  end
end
