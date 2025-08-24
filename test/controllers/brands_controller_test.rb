require "test_helper"

class BrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand = brands(:one)
  end

  test "should get index" do
    get brands_path
    assert_response :success
  end

  # Routes only support index and show
  # test "should get new" do
  #   get new_brand_path
  #   assert_response :success
  # end

  # test "should create brand" do
  #   assert_difference("Brand.count") do
  #     post brands_path, params: { brand: { company_id: @brand.company_id, detail: @brand.detail, kana: @brand.kana, name: "新規テストブランド", name_en: @brand.name_en, public_id: "new_test_brand" } }
  #   end

  #   assert_redirected_to brand_path(Brand.last)
  # end

  test "should show brand" do
    get brand_path(@brand)
    assert_response :success
  end

  # Routes only support index and show
  # test "should get edit" do
  #   get edit_brand_path(@brand)
  #   assert_response :success
  # end

  # test "should update brand" do
  #   patch brand_path(@brand), params: { brand: { company_id: @brand.company_id, detail: @brand.detail, kana: @brand.kana, name: @brand.name, name_en: @brand.name_en, public_id: @brand.public_id } }
  #   assert_redirected_to brand_path(@brand)
  # end

  # test "should destroy brand" do
  #   assert_difference("Brand.count", -1) do
  #     delete brand_path(@brand)
  #   end

  #   assert_redirected_to brands_path
  # end
end
