class CreateAssetTags < ActiveRecord::Migration
  def change
    create_table :asset_tags do |t|
      t.integer :asset_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
