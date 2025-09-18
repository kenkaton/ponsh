require "application_system_test_case"

class BrandsTest < ApplicationSystemTestCase
  setup do
    @brand = brands(:one)
  end

  test "visiting the index" do
    visit brands_url
    assert_selector "h1"
  end

  test "should show brand" do
    visit brand_url(@brand)
    assert_selector "h1", text: @brand.name
    assert_text @brand.name
  end
end
