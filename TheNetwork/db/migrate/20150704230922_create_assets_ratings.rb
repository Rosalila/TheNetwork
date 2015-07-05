class CreateAssetsRatings < ActiveRecord::Migration
  def change
    create_table :assets_ratings do |t|
      t.integer :asset_id
      t.integer :rating

      t.timestamps null: false
    end
  end
end
