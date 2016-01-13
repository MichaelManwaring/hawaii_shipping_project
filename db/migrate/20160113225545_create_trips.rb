class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :ship_id
      t.integer :route_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
