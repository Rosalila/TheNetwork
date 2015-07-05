class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :engine_id
      t.string :name
      t.string :image
      t.text :description
      t.integer :license_id

      t.timestamps null: false
    end
  end
end
