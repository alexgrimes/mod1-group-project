require 'pry'
require_relative '../config/environment'

#### customer instances ####
# michael = Customer.create(name: "Michael", email: "michael.email@email.com")
# sid = Customer.create(name: "Sid", email: "sid.email@email.com")
# alex = Customer.create(name: "Alex", email: "alex.email@email.com")

puts Customers.all
# puts Customers.all.map { |c| c.name }

# current_customer = Customers.find_by(name: chosen_name)

#### restaurants ####
# chicken_shack = Restaurant.create(name: "Chicken Shack", phone_number: 0123456789, location: "Streeterville")
# asian_station = Restaurant.create(name: "Asian Station", phone_number: 0123456789, location: "Rogers Park")
# burger_palace = Restaurant.create(name: "Burger Palace", phone_number: 0123456789, location: "Bridgeport")

# #### reviews ####
# review_one = Review.create(rating: 3, restaurant_id: chicken_shack.id, customer_id: sid.id)
# review_two = Review.create(rating: 3, restaurant_id: asian_station.id, customer_id: alex.id)
# review_one = Review.create(rating: 3, restaurant_id: burger_palace.id, customer_id: michael.id)
binding.pry
puts "hello world"
