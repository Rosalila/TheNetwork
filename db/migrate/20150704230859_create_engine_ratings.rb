class CreateEngineRatings < ActiveRecord::Migration
  def change
    create_table :engine_ratings do |t|
      t.integer :engine_id
      t.integer :rating

      t.timestamps null: false
    end
  end
end
