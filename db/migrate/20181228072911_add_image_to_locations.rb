class AddImageToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :image_id, :text
    add_column :locations, :content_id, :integer
    add_column :locations, :user_id, :integer
  end
end
