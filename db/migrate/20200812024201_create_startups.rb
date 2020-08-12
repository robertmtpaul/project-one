class CreateStartups < ActiveRecord::Migration[5.2]
  def change
    create_table :startups do |t|
      t.string :name
      t.integer :city_id
      t.text :description
      t.integer :valuation
      t.text :funding
      t.text :status
      t.integer :employees
      t.string :favourite_id
      t.string :country_id

      t.timestamps
    end
  end
end
