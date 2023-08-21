class AddNewColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :user_name, :string
    add_column :users, :postal_address, :string
  end
end
