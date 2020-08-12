class CreateCoworkingSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :coworking_spaces do |t|
      t.text :name
      t.text :image
      t.text :description
      t.text :reviews
      t.text :companies

      t.timestamps
    end
  end
end
