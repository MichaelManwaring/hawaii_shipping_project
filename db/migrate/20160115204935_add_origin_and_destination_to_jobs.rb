class AddOriginAndDestinationToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :origin, :integer
    add_column :jobs, :destination, :integer
  end
end
