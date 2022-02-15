class CreateCareerDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :career_details do |t|
      t.text :heading
      t.text :details

      t.timestamps
    end
  end
end
