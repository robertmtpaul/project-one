class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.text :name
      t.integer :rank
      t.text :mercer
      t.text :image1
      t.text :image2
      t.text :internet_speed
      t.integer :startups

      t.timestamps
    end
  end
end
