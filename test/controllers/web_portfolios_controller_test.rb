require "test_helper"

class WebPortfoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_portfolio = web_portfolios(:one)
  end

  test "should get index" do
    get web_portfolios_url
    assert_response :success
  end

  test "should get new" do
    get new_web_portfolio_url
    assert_response :success
  end

  test "should create web_portfolio" do
    assert_difference("WebPortfolio.count") do
      post web_portfolios_url, params: { web_portfolio: { client_side: @web_portfolio.client_side, database: @web_portfolio.database, description: @web_portfolio.description, photo: @web_portfolio.photo, server_side: @web_portfolio.server_side, subtitle: @web_portfolio.subtitle, title: @web_portfolio.title, type: @web_portfolio.type, url: @web_portfolio.url } }
    end

    assert_redirected_to web_portfolio_url(WebPortfolio.last)
  end

  test "should show web_portfolio" do
    get web_portfolio_url(@web_portfolio)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_portfolio_url(@web_portfolio)
    assert_response :success
  end

  test "should update web_portfolio" do
    patch web_portfolio_url(@web_portfolio), params: { web_portfolio: { client_side: @web_portfolio.client_side, database: @web_portfolio.database, description: @web_portfolio.description, photo: @web_portfolio.photo, server_side: @web_portfolio.server_side, subtitle: @web_portfolio.subtitle, title: @web_portfolio.title, type: @web_portfolio.type, url: @web_portfolio.url } }
    assert_redirected_to web_portfolio_url(@web_portfolio)
  end

  test "should destroy web_portfolio" do
    assert_difference("WebPortfolio.count", -1) do
      delete web_portfolio_url(@web_portfolio)
    end

    assert_redirected_to web_portfolios_url
  end
end
