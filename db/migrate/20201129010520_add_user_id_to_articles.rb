class AddUserIdToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles1s, :user_id, :int
  end
end
