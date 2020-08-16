class AddWebsiteUrlToStartups < ActiveRecord::Migration[5.2]
  def change
    add_column :startups, :website_url, :text
  end
end
