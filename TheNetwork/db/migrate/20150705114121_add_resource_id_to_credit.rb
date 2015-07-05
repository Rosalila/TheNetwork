class AddResourceIdToCredit < ActiveRecord::Migration
  def change
    add_column :credits, :resource_id, :integer
  end
end
