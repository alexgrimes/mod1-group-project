class CliMethods 

#   def self.find_review_by_id(current_user.id)
    
#     puts "Enter the restaurant ID"
#     restaurant_id = gets.chomp
#     review = Review.where(customer_id: current_user.id, restaurant_id: restaurant_id)
#     #we need to return
#     #the customer and restaurant name. Add columns to join table?
#     #binding.pry
#     rating = review.pluck(:rating)
#     if rating.length >= 1
#       p  "Hello customer ##{customer_id}. You gave that restaurant a rating of #{rating.compact.sum / rating.length} hungry bellies!" 
#     else p "You have yet to review that place."
#     end
#   end 

# end 


  def self.find_review_by_user_id(current_user)
    review_info = current_user.reviews.pluck(:rating)
    p "Hello #{current_user.name}! These are the ratings for the restaurants you've reviewed!"
    puts  "#{review_info} hungry bellies!" 
  end 
end 