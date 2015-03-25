class AddAttributesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
    add_index :users, :username, unique: true
    add_column :users, :handle, :string
    add_column :users, :mobile_number, :string
  end
end
