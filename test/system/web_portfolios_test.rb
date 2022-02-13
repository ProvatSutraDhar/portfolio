require "application_system_test_case"

class WebPortfoliosTest < ApplicationSystemTestCase
  setup do
    @web_portfolio = web_portfolios(:one)
  end

  test "visiting the index" do
    visit web_portfolios_url
    assert_selector "h1", text: "Web portfolios"
  end

  test "should create web portfolio" do
    visit web_portfolios_url
    click_on "New web portfolio"

    fill_in "Client side", with: @web_portfolio.client_side
    fill_in "Database", with: @web_portfolio.database
    fill_in "Description", with: @web_portfolio.description
    fill_in "Photo", with: @web_portfolio.photo
    fill_in "Server side", with: @web_portfolio.server_side
    fill_in "Subtitle", with: @web_portfolio.subtitle
    fill_in "Title", with: @web_portfolio.title
    fill_in "Type", with: @web_portfolio.type
    fill_in "Url", with: @web_portfolio.url
    click_on "Create Web portfolio"

    assert_text "Web portfolio was successfully created"
    click_on "Back"
  end

  test "should update Web portfolio" do
    visit web_portfolio_url(@web_portfolio)
    click_on "Edit this web portfolio", match: :first

    fill_in "Client side", with: @web_portfolio.client_side
    fill_in "Database", with: @web_portfolio.database
    fill_in "Description", with: @web_portfolio.description
    fill_in "Photo", with: @web_portfolio.photo
    fill_in "Server side", with: @web_portfolio.server_side
    fill_in "Subtitle", with: @web_portfolio.subtitle
    fill_in "Title", with: @web_portfolio.title
    fill_in "Type", with: @web_portfolio.type
    fill_in "Url", with: @web_portfolio.url
    click_on "Update Web portfolio"

    assert_text "Web portfolio was successfully updated"
    click_on "Back"
  end

  test "should destroy Web portfolio" do
    visit web_portfolio_url(@web_portfolio)
    click_on "Destroy this web portfolio", match: :first

    assert_text "Web portfolio was successfully destroyed"
  end
end
