class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :route_name
      t.integer :origin
      t.integer :stop
      t.integer :destination
      t.integer :duration

      t.timestamps null: false
    end
  end
end
