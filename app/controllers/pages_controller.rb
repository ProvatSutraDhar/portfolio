class PagesController < ApplicationController

  def home
  @career_details =CareerDetail.all
  @web_portfolios = WebPortfolio.all
  end

end
