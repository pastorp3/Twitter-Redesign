# rubocop: disable all

class AddIndexToComments < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :comments, :users
  end
end

# rubocop: enable all
