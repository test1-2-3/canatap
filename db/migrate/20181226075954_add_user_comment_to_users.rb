class AddUserCommentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :users_comment, :string
  end
end
