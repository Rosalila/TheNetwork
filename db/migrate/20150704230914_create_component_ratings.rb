class CreateComponentRatings < ActiveRecord::Migration
  def change
    create_table :component_ratings do |t|
      t.integer :component_id
      t.integer :rating

      t.timestamps null: false
    end
  end
end
