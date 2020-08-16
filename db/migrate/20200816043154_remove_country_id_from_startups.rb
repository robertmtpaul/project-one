class RemoveCountryIdFromStartups < ActiveRecord::Migration[5.2]
  def change
    remove_column :startups, :country_id, :string
  end
end
