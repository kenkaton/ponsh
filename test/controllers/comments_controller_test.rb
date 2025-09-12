require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  # Mock Rodauth for testing
  class MockRodauth
    attr_reader :account
    
    def initialize(account = nil)
      @account = account
    end
    
    def rails_account
      @account
    end
    
    def require_account
      # Skip authentication for tests
    end
  end
  
  def setup
    @account = accounts(:one)
    @other_account = accounts(:two)
    @brand = brands(:one)
    @comment = comments(:one)
    @other_comment = comments(:two)
    
    # Skip Pundit for controller tests
    ENV["ENABLE_PUNDIT"] = "false"
    
    # Mock Rodauth for testing
    @mock_rodauth = MockRodauth.new(@account)
    @controller.define_singleton_method(:rodauth) { @mock_rodauth }
  end

  def teardown
    ENV["ENABLE_PUNDIT"] = nil
  end

  # INDEX action tests
  test "should get index with comments" do
    get brand_comments_path(@brand)
    assert_response :success
    assert_select 'h2', text: /コメント/, count: 1
    assert_select '[data-testid="comment"]', count: @brand.comments.count
  end

  test "should get index with no comments" do
    brand_without_comments = brands(:two)
    get brand_comments_path(brand_without_comments)
    assert_response :success
    assert_select 'h3', text: 'まだコメントがありません'
  end

  # SHOW action tests
  test "should show comment" do
    get brand_comment_path(@brand, @comment)
    assert_response :success
    assert_select 'h2', 'コメント詳細'
  end

  test "should show comment with correct content" do
    get brand_comment_path(@brand, @comment)
    assert_response :success
    assert_select 'p', text: @comment.body
  end

  # CREATE action tests
  test "should create comment when logged in" do
    assert_difference('Comment.count') do
      post brand_comments_path(@brand), params: { 
        comment: { body: "新しいコメントです" } 
      }
    end
    assert_redirected_to brand_path(@brand, anchor: "comments")
    assert_equal "コメントを投稿しました。", flash[:notice]
  end

  test "should not create comment with invalid body" do
    assert_no_difference('Comment.count') do
      post brand_comments_path(@brand), params: { 
        comment: { body: "" } 
      }
    end
    assert_redirected_to brand_path(@brand, anchor: "comments")
    assert flash[:alert].present?
  end

  test "should not create comment with too long body" do
    assert_no_difference('Comment.count') do
      post brand_comments_path(@brand), params: { 
        comment: { body: "a" * 1001 } 
      }
    end
    assert_redirected_to brand_path(@brand, anchor: "comments")
    assert flash[:alert].present?
  end

  test "should associate comment with correct brand" do
    post brand_comments_path(@brand), params: { 
      comment: { body: "ブランド関連付けテスト" } 
    }
    
    latest_comment = Comment.last
    assert_equal @brand, latest_comment.commentable
    assert_equal @account, latest_comment.account
  end

  # DESTROY action tests
  test "should destroy own comment" do
    comment_to_delete = @brand.comments.create!(
      account: @account, 
      body: "削除テスト用コメント"
    )
    
    assert_difference('Comment.count', -1) do
      delete brand_comment_path(@brand, comment_to_delete)
    end
    assert_redirected_to brand_path(@brand, anchor: "comments")
    assert_equal "コメントを削除しました。", flash[:notice]
  end

  # Authentication tests (without login)
  test "should get index without authentication" do
    @controller.define_singleton_method(:rodauth) { MockRodauth.new(nil) }
    
    get brand_comments_path(@brand)
    assert_response :success
    assert_select 'p', text: /ログインが必要です/
  end

  test "should not create comment without authentication" do
    @controller.define_singleton_method(:rodauth) { 
      MockRodauth.new(nil).tap do |mock|
        def mock.require_account
          raise "Authentication required"
        end
      end
    }
    
    assert_raises(RuntimeError, "Authentication required") do
      post brand_comments_path(@brand), params: { 
        comment: { body: "認証なしコメント" } 
      }
    end
  end

  # Error handling tests
  test "should handle nonexistent brand" do
    assert_raises(ActiveRecord::RecordNotFound) do
      get brand_comments_path(public_id: "nonexistent")
    end
  end

  test "should handle nonexistent comment" do
    assert_raises(ActiveRecord::RecordNotFound) do
      get brand_comment_path(@brand, id: "nonexistent")
    end
  end

  # Routing tests
  test "routes should be correct" do
    assert_routing brand_comments_path(@brand), 
                   { controller: "comments", action: "index", brand_id: @brand.to_param }
    assert_routing brand_comment_path(@brand, @comment), 
                   { controller: "comments", action: "show", brand_id: @brand.to_param, id: @comment.id.to_s }
  end
end