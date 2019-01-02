class AddLocationIdToPlaceTalkComments < ActiveRecord::Migration[5.2]
  def change
    add_column :place_talk_comments, :location_id, :integer
  end
end
