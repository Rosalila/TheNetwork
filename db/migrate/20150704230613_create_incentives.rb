class CreateIncentives < ActiveRecord::Migration
  def change
    create_table :incentives do |t|
      t.integer :asset_id
      t.integer :user_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
