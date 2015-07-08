class CreateComponentComments < ActiveRecord::Migration
  def change
    create_table :component_comments do |t|
      t.integer :component_id
      t.integer :user_id
      t.text :comment

      t.timestamps null: false
    end
  end
end
