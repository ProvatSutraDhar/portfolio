require "application_system_test_case"

class MlPortfoliosTest < ApplicationSystemTestCase
  setup do
    @ml_portfolio = ml_portfolios(:one)
  end

  test "visiting the index" do
    visit ml_portfolios_url
    assert_selector "h1", text: "Ml portfolios"
  end

  test "should create ml portfolio" do
    visit ml_portfolios_url
    click_on "New ml portfolio"

    fill_in "Description", with: @ml_portfolio.description
    fill_in "Framework", with: @ml_portfolio.framework
    fill_in "Language", with: @ml_portfolio.language
    fill_in "Libraries", with: @ml_portfolio.libraries
    fill_in "Photo", with: @ml_portfolio.photo
    fill_in "Subtitle", with: @ml_portfolio.subtitle
    fill_in "Title", with: @ml_portfolio.title
    fill_in "Type", with: @ml_portfolio.type
    fill_in "Url", with: @ml_portfolio.url
    click_on "Create Ml portfolio"

    assert_text "Ml portfolio was successfully created"
    click_on "Back"
  end

  test "should update Ml portfolio" do
    visit ml_portfolio_url(@ml_portfolio)
    click_on "Edit this ml portfolio", match: :first

    fill_in "Description", with: @ml_portfolio.description
    fill_in "Framework", with: @ml_portfolio.framework
    fill_in "Language", with: @ml_portfolio.language
    fill_in "Libraries", with: @ml_portfolio.libraries
    fill_in "Photo", with: @ml_portfolio.photo
    fill_in "Subtitle", with: @ml_portfolio.subtitle
    fill_in "Title", with: @ml_portfolio.title
    fill_in "Type", with: @ml_portfolio.type
    fill_in "Url", with: @ml_portfolio.url
    click_on "Update Ml portfolio"

    assert_text "Ml portfolio was successfully updated"
    click_on "Back"
  end

  test "should destroy Ml portfolio" do
    visit ml_portfolio_url(@ml_portfolio)
    click_on "Destroy this ml portfolio", match: :first

    assert_text "Ml portfolio was successfully destroyed"
  end
end
