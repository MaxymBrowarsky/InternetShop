class Category < ApplicationRecord
	has_many :products
	validates :category, presence: true
	
end
