class AddUserIdToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :user_id, :integer
    add_column :orders, :name, :string
    add_column :orders, :surname, :string
    add_column :orders, :address, :string
    add_column :orders, :total_price, :decimal
  end
end
