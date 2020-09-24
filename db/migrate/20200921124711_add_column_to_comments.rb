# rubocop: disable all

class AddColumnToComments < ActiveRecord::Migration[6.0]
  def change
    add_index :comments, :user_id
  end
end

# rubocop: enable all
