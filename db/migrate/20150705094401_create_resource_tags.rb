class CreateResourceTags < ActiveRecord::Migration
  def change
    create_table :resource_tags do |t|
      t.integer :resource_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
