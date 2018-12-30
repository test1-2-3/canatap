class AddContentIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :content_id, :string
  end
end
