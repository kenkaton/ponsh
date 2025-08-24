require "test_helper"

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  # Routes only support show
  # test "should get index" do
  #   get companies_path
  #   assert_response :success
  # end

  # test "should get new" do
  #   get new_company_path
  #   assert_response :success
  # end

  # test "should create company" do
  #   assert_difference("Company.count") do
  #     post companies_path, params: { company: { detail: @company.detail, kana: @company.kana, name: "新規テスト酒造", name_en: @company.name_en, public_id: "new_test_company" } }
  #   end

  #   assert_redirected_to company_path(Company.last)
  # end

  test "should show company" do
    get company_path(@company)
    assert_response :success
  end

  # Routes only support show
  # test "should get edit" do
  #   get edit_company_path(@company)
  #   assert_response :success
  # end

  # test "should update company" do
  #   patch company_path(@company), params: { company: { detail: @company.detail, kana: @company.kana, name: @company.name, name_en: @company.name_en, public_id: @company.public_id } }
  #   assert_redirected_to company_path(@company)
  # end

  # test "should destroy company" do
  #   assert_difference("Company.count", -1) do
  #     delete company_path(@company)
  #   end

  #   assert_redirected_to companies_path
  # end
end
