class AddUserToUser < ActiveRecord::Migration
  def change
    add_column :users, :user, :boolean
  end
end
