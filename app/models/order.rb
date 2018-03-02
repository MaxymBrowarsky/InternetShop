class Order < ApplicationRecord
	belongs_to :user
	has_many :cart_items, dependent: :destroy
	validates :name, :surname, :address, presence: true


	def add_cart_items_from_cart(cart)
 		cart.cart_items.each do |item|
 			item.cart_id = nil
 			cart_items << item
		end
	 end


end
