class AddEngineIdToComponent < ActiveRecord::Migration
  def change
    add_column :components, :engine_id, :integer
  end
end
