class CreateEngineTags < ActiveRecord::Migration
  def change
    create_table :engine_tags do |t|
      t.integer :engine_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
