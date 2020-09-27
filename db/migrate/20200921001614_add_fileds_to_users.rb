# rubocop: disable all

class AddFiledsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end

# rubocop: enable all
