class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_name
      t.integer :containers_needed
      t.text :cargo
      t.integer :cost
      t.datetime :delivery_by

      t.timestamps null: false
    end
  end
end
