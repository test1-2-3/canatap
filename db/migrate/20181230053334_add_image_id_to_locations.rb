class AddImageIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :image_id, :text
  end
end
