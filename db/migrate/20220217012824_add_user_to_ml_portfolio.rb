class AddUserToMlPortfolio < ActiveRecord::Migration[7.0]
  def change
    add_reference :ml_portfolios, :user, null: true, foreign_key: true
  end
end
