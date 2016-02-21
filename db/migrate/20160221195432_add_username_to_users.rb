class AddUsernameToUsers < ActiveRecord::Migration
  def change # Anything inside of this method is inserted to SQL lite database
    add_column :users, :username, :string #add new column to database to table users column name username type sting
    add_index :users, :username, unique: true #index column for quick lookup. Make all usernames unique
  end
end
