class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer :license_id

      t.timestamps null: false
    end
  end
end
