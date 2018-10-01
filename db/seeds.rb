# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create email: 'info@beetlegius.com.ar', password: '123456', role: User::SUPERADMIN

2.times do |i|
  category = Category.create name: "Category #{i}"
  puts category.name if category.valid?
end
categories = Category.all

10.times do |i|
  product = Product.create name: "Product #{i}", price: rand(0.0..1000.0), category: categories.sample
  puts product.name if product.valid?
end
