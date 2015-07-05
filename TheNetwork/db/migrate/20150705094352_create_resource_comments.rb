class CreateResourceComments < ActiveRecord::Migration
  def change
    create_table :resource_comments do |t|
      t.integer :resource_id
      t.integer :user_id
      t.text :comment

      t.timestamps null: false
    end
  end
end
