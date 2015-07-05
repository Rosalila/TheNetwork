class CreateEngineComments < ActiveRecord::Migration
  def change
    create_table :engine_comments do |t|
      t.integer :engine_id
      t.integer :user_id
      t.text :comment

      t.timestamps null: false
    end
  end
end
