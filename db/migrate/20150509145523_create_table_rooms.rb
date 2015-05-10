class CreateTableRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.integer :status, default: 0, null: false
      t.timestamps
    end

    create_table :room_members do |t|
      t.integer :room_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end

    add_index :room_members, [:room_id, :user_id], unique: true
  end
end
