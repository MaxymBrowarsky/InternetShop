class AddDefaultValueToAmountAttribute < ActiveRecord::Migration[5.1]
  def change
  	change_column_default(:products, :amount, 0)
  end
end
