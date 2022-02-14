class CreateWebPortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :web_portfolios do |t|
      t.string :title
      t.string :subtitle
      t.string :portfolio_type
      t.string :client_side
      t.string :server_side
      t.string :database
      t.text :description
      t.string :url
      t.string :photo

      t.timestamps
    end
  end
end
