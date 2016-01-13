class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.integer :user_id
      t.string :ship_name
      t.integer :container_space
      t.integer :current_location

      t.timestamps null: false
    end
  end
end
