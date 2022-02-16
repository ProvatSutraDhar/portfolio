class AddPhotoToCareerDetail < ActiveRecord::Migration[7.0]
  def change
    add_column :career_details, :photo, :string
  end
end
