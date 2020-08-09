class CreateFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites do |t|
      t.text :title
      t.integer :user_id
      t.text :image

      t.timestamps
    end
  end
end
