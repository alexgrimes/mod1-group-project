require 'pry'
require_relative '../config/environment'

## means these are the CRUD methods that we're working up to 
## MVP status (with what kind of method behind)

# Review.review_with_a_hash_of_attributes
# Review.connection
# current_customer = Customers.find_by(name: chosen_name)
##Review.find_review_by_id(5, 5)
 ###Review.update_review(7) 
#Review.new_review(5)
# Review.create_review(rating: 4, restaurant: "Burger Palace")
# Review.find_max_review
# Review.ratings_sum
# Review.find_review_by_restaurant("Burger Palace")
Review.delete_review(5)

binding.pry
puts "hello world"
