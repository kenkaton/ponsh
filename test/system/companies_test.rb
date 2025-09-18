require "application_system_test_case"

class CompaniesTest < ApplicationSystemTestCase
  setup do
    @company = companies(:one)
  end

  test "should show company" do
    visit company_url(@company)
    assert_selector "h2", text: @company.name
    assert_text @company.name
  end
end
