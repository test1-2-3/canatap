class CreateUserTagmaps < ActiveRecord::Migration[5.2]
  def change
    create_table :user_tagmaps do |t|
      t.integer :tag_id
      t.integer :user_id

      t.timestamps
    end
  end
end
