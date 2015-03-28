class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :uri
      t.string :name
      t.integer :user_id
      t.integer :category_id
      t.integer :vimeo_id
      t.string :pictures
      t.integer :stats


      t.timestamps null: false
    end
  end
end
