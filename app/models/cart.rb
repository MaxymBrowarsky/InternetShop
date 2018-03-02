class Cart < ApplicationRecord
	has_many :cart_items, dependent: :destroy

	def add_product(product_id)
		current_item = cart_items.find_by(product_id: product_id)
		if current_item
			if current_item.product.amount > current_item.quantity
				current_item.quantity += 1
			end
		else
			if Product.find(product_id).amount > 0
				current_item = cart_items.build(product_id: product_id)
			end
		end
		current_item
	end

	def total_price
		cart_items.to_a.sum { |item| item.total_price }
	end

	
end
