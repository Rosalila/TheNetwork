class CreateGameRatings < ActiveRecord::Migration
  def change
    create_table :game_ratings do |t|
      t.integer :game_id
      t.integer :rating

      t.timestamps null: false
    end
  end
end
