class AddUsernameToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :username, :string
  end
end
