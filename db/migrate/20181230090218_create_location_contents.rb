class CreateLocationContents < ActiveRecord::Migration[5.2]
  def change
    create_table :location_contents do |t|
      t.integer :content_id
      t.integer :location_id
      t.timestamps
    end
  end
end
