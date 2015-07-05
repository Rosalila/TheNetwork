class AddResourceIdToIncentive < ActiveRecord::Migration
  def change
    add_column :incentives, :resource_id, :integer
  end
end
