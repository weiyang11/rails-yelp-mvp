# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

puts 'Creating Restaurant'

restaurant_one = Restaurant.create(name: "Hoxton 100", address: "Hoxton Street", phone_number: "01234 578990", category: "chinese")
restaurant_two = Restaurant.create(name: "Hoxton 200", address: "Hoxton TwoStreet", phone_number: "01234 840200", category: "italian")
restaurant_three = Restaurant.create(name: "Hoxton 300", address: "Hoxton ThreeStreet", phone_number: "01234 283648", category: "japanese")
restaurant_four = Restaurant.create(name: "Hoxton 400", address: "Hoxton FourStreet", phone_number: "01234 627394", category: "french")
restaurant_five = Restaurant.create(name: "Hoxton 500", address: "Hoxton FiveStreet", phone_number: "01234 987123", category: "belgian")

puts 'Seeds created!'
