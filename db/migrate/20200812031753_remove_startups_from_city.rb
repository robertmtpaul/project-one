class RemoveStartupsFromCity < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :startups, :integer
  end
end
