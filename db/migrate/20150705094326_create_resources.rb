class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.string :image
      t.integer :component_id
      t.integer :category_id
      t.string :download
      t.integer :license_id
      t.string :video

      t.timestamps null: false
    end
  end
end
