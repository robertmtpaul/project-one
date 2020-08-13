class AddUrlToCoworkingSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :coworking_spaces, :URL, :text
  end
end
