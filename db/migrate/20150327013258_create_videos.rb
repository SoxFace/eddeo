class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :uri
      t.string :name
      t.integer :user_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
