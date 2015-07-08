class RemoveNameFromTag < ActiveRecord::Migration
  def change
    remove_column :tags, :name, :integer
  end
end
