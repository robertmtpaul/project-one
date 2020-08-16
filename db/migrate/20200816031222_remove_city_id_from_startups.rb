class RemoveCityIdFromStartups < ActiveRecord::Migration[5.2]
  def change
    remove_column :startups, :city_id, :integer
  end
end
