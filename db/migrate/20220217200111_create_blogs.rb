class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :subtitle
      t.integer :views, default: 0
      t.string :photo
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
