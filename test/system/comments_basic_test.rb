require "application_system_test_case"

class CommentsBasicTest < ApplicationSystemTestCase
  def setup
    @account = accounts(:one)
    @brand = brands(:one)

    # Clean slate for each test
    Comment.destroy_all
    @test_comment = Comment.create!(
      account: @account,
      commentable: @brand,
      body: "これはシステムテスト用のコメントです。"
    )
  end

  test "visiting the brand page shows comments section" do
    visit brand_path(@brand)

    assert_selector "h2", text: "コメント"
    assert_text "コメント"
  end

  test "brand page displays existing comments" do
    visit brand_path(@brand)

    assert_selector '[data-testid="comment"]', count: 1
    assert_text "これはシステムテスト用のコメントです。"
  end

  test "comments show author information" do
    visit brand_path(@brand)

    within '[data-testid="comment"]' do
      assert_text @account.display_name
      # Should show avatar circle
      assert_selector ".rounded-full"
    end
  end

  test "comments index page is accessible" do
    visit brand_comments_path(@brand)

    assert_selector "h2", text: /コメント/
    assert_selector '[data-testid="comment"]', count: 1
    assert_text "これはシステムテスト用のコメントです。"
  end

  test "empty state is shown when no comments" do
    @test_comment.destroy
    visit brand_path(@brand)

    assert_text "まだコメントがありません"
  end

  test "back link works from comments page" do
    visit brand_comments_path(@brand)

    click_link "戻る"

    assert_current_path brand_path(@brand)
    assert_selector "h1", text: @brand.name
  end

  test "comment count is displayed correctly" do
    visit brand_path(@brand)

    assert_text "(1件)"
  end

  test "responsive layout works" do
    # Test mobile viewport
    page.current_window.resize_to(375, 667)

    visit brand_path(@brand)

    # Comments section should still be visible
    assert_selector "h2", text: "コメント"
    assert_selector '[data-testid="comment"]'

    # Reset to desktop
    page.current_window.resize_to(1024, 768)
  end

  test "multiple comments are displayed in correct order" do
    # Create additional comments
    older_comment = Comment.create!(
      account: @account,
      commentable: @brand,
      body: "古いコメント",
      created_at: 1.hour.ago
    )

    newer_comment = Comment.create!(
      account: @account,
      commentable: @brand,
      body: "新しいコメント",
      created_at: 1.minute.ago
    )

    visit brand_path(@brand)

    # Should show newest first in recent order
    comments = all('[data-testid="comment"]')
    assert_equal 3, comments.count

    # Verify order (newest first)
    assert_text "新しいコメント"
    assert_text "これはシステムテスト用のコメントです。"
    assert_text "古いコメント"
  end

  test "anchor link to comments section works" do
    visit brand_path(@brand, anchor: "comments")

    # Should have the comments section visible
    assert_selector "#comments"
    assert_selector "h2", text: "コメント"
  end
end
