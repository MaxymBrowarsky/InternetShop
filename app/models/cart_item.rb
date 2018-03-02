class CartItem < ApplicationRecord
	belongs_to :cart
	belongs_to :product
	belongs_to :order, required: false
	def total_price
		product.price * quantity
	end
	
end
