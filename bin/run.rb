require 'pry'
require_relative '../config/environment'

# puts Customers.all
# puts Customers.all.map { |c| c.name }

# current_customer = Customers.find_by(name: chosen_name)

Review.update_review
# Review.new_review(rating: 4, restaurant: "Burger Palace")
# Review.create_review(rating: 4, restaurant: "Burger Palace")
# Review.find_max_review
# Review.ratings_sum
# Review.find_review_by_restaurant("Burger Palace")

binding.pry
puts "hello world"
