class CreatePlaceTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :place_talks do |t|
      t.text :place_talk
      t.text :image_id
      t.integer :content_id
      t.integer :place_id
      t.integer :user_id

      t.timestamps
    end
  end
end
