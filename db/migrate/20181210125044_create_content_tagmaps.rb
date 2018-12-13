class CreateContentTagmaps < ActiveRecord::Migration[5.2]
  def change
    create_table :content_tagmaps do |t|
      t.integer :tag_id
      t.integer :content_id

      t.timestamps
    end
  end
end
