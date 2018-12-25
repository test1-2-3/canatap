class AddColumnToPlaceTalks < ActiveRecord::Migration[5.2]
  def change
    add_column :place_talks, :latitude, :decimal, precision: 9, scale: 6
    add_column :place_talks, :longitude,:decimal, precision: 9, scale: 6


  end
end
