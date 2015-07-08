class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.integer :user_id
      t.integer :asset_id

      t.timestamps null: false
    end
  end
end
