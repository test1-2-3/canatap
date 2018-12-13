class CreateUserTalks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_talks do |t|
      t.integer :room_id
      t.text :user_talk
      t.integer :user_id

      t.timestamps
    end
  end
end
