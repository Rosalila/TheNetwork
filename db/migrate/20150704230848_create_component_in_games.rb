class CreateComponentInGames < ActiveRecord::Migration
  def change
    create_table :component_in_games do |t|
      t.integer :component_id
      t.integer :game_id

      t.timestamps null: false
    end
  end
end
