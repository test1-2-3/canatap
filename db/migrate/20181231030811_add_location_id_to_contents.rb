class AddLocationIdToContents < ActiveRecord::Migration[5.2]
  def change
    add_column :contents, :location_id, :integer
  end
end
