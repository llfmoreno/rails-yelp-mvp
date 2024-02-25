# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "2345-1234", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "3245-3457", category: "italian"}
brazilbowl = {name: "BrazilBowl", address: "24 Paulista St, Sao Paulo", phone_number: "6332-5677", category: "japanese"}
koreanbbq = {name: "KoreanBBQ", address: "12 Korean Av, Korea", phone_number: "4566-8765", category: "french"}
burgerhouse = {name: "BurgerHouse", address: "99 Sorocaba, Brazil", phone_number: "7564-8457", category: "belgian"}

[dishoom, pizza_east, brazilbowl, koreanbbq, burgerhouse].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
