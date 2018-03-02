class AddOrderIdToCartItem < ActiveRecord::Migration[5.1]
  def change
    add_column :cart_items, :order_id, :integer
  end
end
