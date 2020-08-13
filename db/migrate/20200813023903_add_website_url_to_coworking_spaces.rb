class AddWebsiteUrlToCoworkingSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :coworking_spaces, :website_url, :text
  end
end
