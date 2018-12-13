class CreatePlaceTalkComments < ActiveRecord::Migration[5.2]
  def change
    create_table :place_talk_comments do |t|
      t.text :comment
      t.integer :place_talk_id
      t.integer :user_id

      t.timestamps
    end
  end
end
