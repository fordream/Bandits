class RenameAccessToken < ActiveRecord::Migration
  def change
    rename_column :users, :access_token, :remember_token
  end
end
