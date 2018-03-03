# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_list = [
	"Category 1",
	"Category 2"
]
product_list = [
	["Product 1", 1, 2, "Description 1", nil, 1],
	["Product 2", 1, 4, "Description 1", nil, 1],
	["Product 3", 1, 6, "Description 1", nil, 5],
	["Product 4", 1, 7, "Description 1", nil, 6],
	["Product 5", 2, 3.5, "Description 1", nil, 1],
	["Product 6", 2, 4, "Description 1", nil, 5],
	["Product 7", 2, 2, "Description 1", nil, 8],
	["Product 8", 2, 2, "Description 1", nil, 1],
]

category_list.each do |category|
	Category.create( category: category)
end

product_list.each do |name, category_id, price, desc, img, amount|
	Product.create( name: name, category_id: category_id, price: price, desc: desc, img: img, amount: amount)
end

User.create( email: "admin@email.com", password: "password", admin: true)
