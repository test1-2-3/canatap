class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :name
      t.integer :user_id
      t.integer :genre_id
      t.text :image_id
      t.text :introduction

      t.timestamps
    end
  end
end
