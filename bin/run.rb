require 'pry'
require_relative '../config/environment'

## means these are the CRUD methods that we're working up to 
## MVP status (with what kind of method behind)

# Review.review_with_a_hash_of_attributes
# Review.connection
# current_customer = Customers.find_by(name: chosen_name)
 Review.find_review_by_id(5, 4) ##R
##U Review.update_review("Alex")
##C Review.new_review(5, 3, 5) [mvp?]
# Review.create_review(rating: 4, restaurant: "Burger Palace")
# Review.find_max_review
# Review.ratings_sum
# Review.find_review_by_restaurant("Burger Palace")

binding.pry
puts "hello world"
