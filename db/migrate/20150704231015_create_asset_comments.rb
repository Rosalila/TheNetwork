class CreateAssetComments < ActiveRecord::Migration
  def change
    create_table :asset_comments do |t|
      t.integer :asset_id
      t.integer :user_id
      t.text :comment

      t.timestamps null: false
    end
  end
end
