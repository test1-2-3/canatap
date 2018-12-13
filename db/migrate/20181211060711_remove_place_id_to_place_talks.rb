class RemovePlaceIdToPlaceTalks < ActiveRecord::Migration[5.2]
  def change
  	remove_column :place_talks, :place_id, :string
  end
end
