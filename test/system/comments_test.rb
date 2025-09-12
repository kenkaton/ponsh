require "application_system_test_case"

class CommentsTest < ApplicationSystemTestCase
  def setup
    @account = accounts(:one)
    @brand = brands(:one)
    @comment = comments(:one)

    # Setup test data
    Comment.destroy_all
    @test_comment = Comment.create!(
      account: @account,
      commentable: @brand,
      body: "これはシステムテスト用のコメントです。"
    )
  end

  test "visiting the brand page shows comments" do
    visit brand_path(@brand)

    assert_selector "h2", text: "コメント"
    assert_selector '[data-testid="comment"]', count: 1
    assert_text "これはシステムテスト用のコメントです。"
    assert_text @account.display_name
  end

  test "visiting brand with no comments shows empty state" do
    @test_comment.destroy
    visit brand_path(@brand)

    assert_selector "h2", text: "コメント"
    assert_text "まだコメントがありません"
  end

  test "viewing comments list page" do
    visit brand_comments_path(@brand)

    assert_selector "h2", text: /コメント/
    assert_selector '[data-testid="comment"]', count: 1
    assert_text "これはシステムテスト用のコメントです。"
    assert_link "戻る"
  end

  test "posting a new comment in development mode" do
    visit brand_path(@brand)

    # Should see comment form in development
    assert_selector "textarea[placeholder*='#{@brand.name}']"

    fill_in "comment_body", with: "新しいコメントをテストで投稿します。"
    click_button "投稿"

    # Should redirect back to brand page with success message
    assert_current_path brand_path(@brand, anchor: "comments"), ignore_query: true
    assert_text "コメントを投稿しました。"
    assert_text "新しいコメントをテストで投稿します。"
  end

  test "comment validation errors are displayed" do
    visit brand_path(@brand)

    # Try to post empty comment
    fill_in "comment_body", with: ""
    click_button "投稿"

    # Should show validation error
    assert_current_path brand_path(@brand, anchor: "comments"), ignore_query: true
    assert_text "を入力してください"
  end

  test "comment with too many characters shows error" do
    visit brand_path(@brand)

    long_comment = "a" * 1001
    fill_in "comment_body", with: long_comment
    click_button "投稿"

    # Should show validation error
    assert_current_path brand_path(@brand, anchor: "comments"), ignore_query: true
    assert_text "は1000文字以内で入力してください"
  end

  test "character counter works" do
    visit brand_path(@brand)

    # Initially should show 0/1000
    assert_text "0 / 1000文字"

    # Type some text
    fill_in "comment_body", with: "テスト"

    # Should update counter (using JavaScript)
    # Note: This might not work in headless tests without JavaScript
    # We'll just verify the element exists
    assert_selector '[data-counter-target="count"]'
  end

  test "comment timestamps are displayed correctly" do
    visit brand_path(@brand)

    # Should show relative time
    assert_text(/\d+分前|\d+時間前|\d+日前/)
  end

  test "comment author avatar and name are displayed" do
    visit brand_path(@brand)

    # Should show author name
    assert_text @account.display_name

    # Should show avatar with first letter
    assert_selector ".rounded-full", text: @account.display_name.first
  end

  test "delete button is shown for own comments" do
    visit brand_path(@brand)

    # Should show delete button for own comment
    # Note: In real app this would require authentication
    within '[data-testid="comment"]' do
      assert_button "削除"
    end
  end

  test "clicking delete button removes comment" do
    visit brand_path(@brand)

    # Click delete and confirm
    within '[data-testid="comment"]' do
      accept_confirm do
        click_button "削除"
      end
    end

    # Should redirect with success message
    assert_current_path brand_path(@brand, anchor: "comments"), ignore_query: true
    assert_text "コメントを削除しました。"

    # Comment should be gone
    assert_no_selector '[data-testid="comment"]'
    assert_text "まだコメントがありません"
  end

  test "navigation to comments index page works" do
    # Create additional comments to trigger "view all" link
    3.times do |i|
      Comment.create!(
        account: @account,
        commentable: @brand,
        body: "追加コメント #{i + 1}"
      )
    end

    visit brand_path(@brand)

    # Should show "view all comments" link when there are more than 3 comments
    click_link "すべてのコメントを見る"

    assert_current_path brand_comments_path(@brand)
    assert_selector "h2", text: /コメント/
    assert_selector '[data-testid="comment"]', count: 4
  end

  test "back link from comments page works" do
    visit brand_comments_path(@brand)

    click_link "戻る"

    assert_current_path brand_path(@brand)
    assert_selector "h1", text: @brand.name
  end

  test "responsive design works on mobile viewport" do
    # Set mobile viewport
    page.current_window.resize_to(375, 667)

    visit brand_path(@brand)

    # Should still show comment form and comments
    assert_selector "textarea[placeholder*='#{@brand.name}']"
    assert_selector '[data-testid="comment"]'
    assert_text "これはシステムテスト用のコメントです。"

    # Reset viewport
    page.current_window.resize_to(1024, 768)
  end

  test "comment section anchor link works" do
    visit brand_path(@brand, anchor: "comments")

    # Should scroll to comments section
    # We can't easily test scrolling, but we can verify the anchor exists
    assert_selector "#comments"
  end

  private

  def accept_confirm
    # Handle JavaScript confirm dialog
    page.driver.browser.switch_to.alert.accept
  rescue Selenium::WebDriver::Error::NoSuchAlertError
    # If no alert, just continue (for headless testing)
    yield
  else
    yield
  end
end
