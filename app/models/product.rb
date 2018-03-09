class Product < ApplicationRecord
	has_many :cart_items, dependent: :destroy
	belongs_to :category
	has_many :orders, through: :line_items
	before_destroy :check_for_cart_items
	mount_uploader :img, ImageUploader
	validates :name, :description, :price, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}


	private

	def check_for_cart_items
		if cart_items.empty?
			return true
		else
			return false
		end
	end
end
