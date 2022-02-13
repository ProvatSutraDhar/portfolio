require "test_helper"

class MlPortfoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ml_portfolio = ml_portfolios(:one)
  end

  test "should get index" do
    get ml_portfolios_url
    assert_response :success
  end

  test "should get new" do
    get new_ml_portfolio_url
    assert_response :success
  end

  test "should create ml_portfolio" do
    assert_difference("MlPortfolio.count") do
      post ml_portfolios_url, params: { ml_portfolio: { description: @ml_portfolio.description, framework: @ml_portfolio.framework, language: @ml_portfolio.language, libraries: @ml_portfolio.libraries, photo: @ml_portfolio.photo, subtitle: @ml_portfolio.subtitle, title: @ml_portfolio.title, type: @ml_portfolio.type, url: @ml_portfolio.url } }
    end

    assert_redirected_to ml_portfolio_url(MlPortfolio.last)
  end

  test "should show ml_portfolio" do
    get ml_portfolio_url(@ml_portfolio)
    assert_response :success
  end

  test "should get edit" do
    get edit_ml_portfolio_url(@ml_portfolio)
    assert_response :success
  end

  test "should update ml_portfolio" do
    patch ml_portfolio_url(@ml_portfolio), params: { ml_portfolio: { description: @ml_portfolio.description, framework: @ml_portfolio.framework, language: @ml_portfolio.language, libraries: @ml_portfolio.libraries, photo: @ml_portfolio.photo, subtitle: @ml_portfolio.subtitle, title: @ml_portfolio.title, type: @ml_portfolio.type, url: @ml_portfolio.url } }
    assert_redirected_to ml_portfolio_url(@ml_portfolio)
  end

  test "should destroy ml_portfolio" do
    assert_difference("MlPortfolio.count", -1) do
      delete ml_portfolio_url(@ml_portfolio)
    end

    assert_redirected_to ml_portfolios_url
  end
end
