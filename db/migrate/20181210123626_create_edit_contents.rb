class CreateEditContents < ActiveRecord::Migration[5.2]
  def change
    create_table :edit_contents do |t|
      t.text :edit_text
      t.text :image_id
      t.integer :content_id
      t.integer :user_id
      t.integer :genre_id
      t.text :introduction

      t.timestamps
    end
  end
end
