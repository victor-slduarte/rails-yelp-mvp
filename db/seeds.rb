# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

10.times do
  restaurant = Restaurant.new
  restaurant.name = Faker::Cannabis.strain
  restaurant.address = Faker::Address.full_address
  restaurant.category = ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  restaurant.phone_number = Faker::PhoneNumber.cell_phone
  restaurant.save
end
