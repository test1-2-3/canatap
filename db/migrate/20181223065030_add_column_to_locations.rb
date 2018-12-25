class AddColumnToLocations < ActiveRecord::Migration[5.2]
  def change
  	 add_column :locations, :comment,:text
  end
end
