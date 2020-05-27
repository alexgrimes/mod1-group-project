require 'pry'
require_relative '../config/environment'

# puts Customers.all
# puts Customers.all.map { |c| c.name }

# Review.review_with_a_hash_of_attributes
# Review.connection
# current_customer = Customers.find_by(name: chosen_name)
Review.find_review_by_id(5)
# Review.update_review("Alex")
# Review.new_review(5, 3, 5)
# Review.create_review(rating: 4, restaurant: "Burger Palace")
# Review.find_max_review
# Review.ratings_sum
# Review.find_review_by_restaurant("Burger Palace")

binding.pry
puts "hello world"
