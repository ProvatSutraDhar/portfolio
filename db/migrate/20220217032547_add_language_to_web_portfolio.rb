class AddLanguageToWebPortfolio < ActiveRecord::Migration[7.0]
  def change
    add_column :web_portfolios, :language, :string
    add_column :web_portfolios, :library, :string
  end
end
