class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :component_id
      t.integer :category_id
      t.string :download
      t.string :license_id

      t.timestamps null: false
    end
  end
end
