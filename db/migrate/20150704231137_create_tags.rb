class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :name

      t.timestamps null: false
    end
  end
end
