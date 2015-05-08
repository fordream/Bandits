class AddAccessTokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :access_token, :string, null: false, after: :id

    add_index :users, :access_token, unique: true
  end
end
