class AddTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :typ, :string
  end
end
