class AddImageToStartups < ActiveRecord::Migration[5.2]
  def change
    add_column :startups, :image, :text
  end
end
