class AddTripIdtoJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :trip_id, :integer
  end
end
