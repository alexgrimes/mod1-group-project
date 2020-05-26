require 'pry'
Review.destroy_all
Restaurant.destroy_all
Customer.destroy_all

Customer.create(name: "Alex", email: "alex@email.com")

#### customer instances ####
michael = Customer.create(name: "Michael", email: "michael.email@email.com")
sid = Customer.create(name: "Sid", email: "sid.email@email.com")
alex = Customer.create(name: "Alex", email: "alex.email@email.com")

chicken_shack = Restaurant.create(name: "Chicken Shack", phone_number: "0123456789", location: "Streeterville")
asian_station = Restaurant.create(name: "Asian Station", phone_number: "0123456789", location: "Rogers Park")
burger_palace = Restaurant.create(name: "Burger Palace", phone_number: "0123456789", location: "Bridgeport")


review_one = Review.create(rating: 3, restaurant: chicken_shack, customer: sid)
review_two = Review.create(rating: 3, restaurant: asian_station, customer: alex)
review_one = Review.create(rating: 3, restaurant: burger_palace, customer: michael)

