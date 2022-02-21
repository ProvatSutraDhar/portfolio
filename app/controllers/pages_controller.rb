class PagesController < ApplicationController

  def home
  @career_details =CareerDetail.all
  @web_portfolios = WebPortfolio.all
  @blogs = Blog.all
  @contact = Contact.new
  end

end
