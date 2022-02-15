class PagesController < ApplicationController

  def home
  @career_details =CareerDetail.all
  end

end
