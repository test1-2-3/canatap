class AddAdressToPlaceTalks < ActiveRecord::Migration[5.2]
  def change
    add_column :place_talks, :adress, :string
    add_column :place_talks, :place_name, :string
    add_column :place_talks, :prefecture, :string
  end
end
