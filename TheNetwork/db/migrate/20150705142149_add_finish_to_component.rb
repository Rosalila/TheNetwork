class AddFinishToComponent < ActiveRecord::Migration
  def change
    add_column :components, :finish, :boolean
  end
end
