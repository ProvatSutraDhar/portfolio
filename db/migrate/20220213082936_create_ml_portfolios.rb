class CreateMlPortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :ml_portfolios do |t|
      t.string :title
      t.string :subtitle
      t.string :portfolio_type
      t.string :language
      t.string :framework
      t.string :libraries
      t.text :description
      t.string :url
      t.string :photo

      t.timestamps
    end
  end
end
