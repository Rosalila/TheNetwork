class CreateEngines < ActiveRecord::Migration
  def change
    create_table :engines do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer :license_id

      t.timestamps null: false
    end
  end
end
