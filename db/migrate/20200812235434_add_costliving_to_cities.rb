class AddCostlivingToCities < ActiveRecord::Migration[5.2]
  def change
    add_column :cities, :costliving, :text
  end
end
