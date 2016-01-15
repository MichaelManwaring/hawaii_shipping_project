class RemoveTypFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :typ, :string
  end
end
