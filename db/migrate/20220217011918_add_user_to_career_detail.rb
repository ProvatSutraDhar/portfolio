class AddUserToCareerDetail < ActiveRecord::Migration[7.0]
  def change
    add_reference :career_details, :user, null: true, foreign_key: true
  end
end
