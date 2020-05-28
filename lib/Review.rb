class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :customer


 ##CREATE
  # def create_review(args = {} )
  #   Review.create do |r|
  #     r.rating = args[:rating]
  #     r.restaurant = args[:restaurant]
  #     r.save
  #   end
  # end 

  ##CREATE
  def self.review_with_a_hash_of_attributes
    # Initialize movie and then and save it
    attributes = {
        rating: 2,
        restaurant_id: 3,
    }
    review = Review.new(attributes)
    review.save
    review
  end

 ##CREATE(MVP?)
  def self.new_review(customer_id)
    review = Review.new
    puts "enter your customer ID"
    customer_id = gets.chomp
    review.customer_id = customer_id
    puts "enter the restaurant ID"
    restaurant_id = gets.chomp
    review.restaurant_id = restaurant_id
    puts "How many hungry bellies do you rate? 10!?"
    rating = gets.chomp 
    review.rating = rating
    review.save
    p "You gave restaurant ##{restaurant_id} #{rating} hungry bellies!"
  end

 ##CREATE  
  # def can_be_instantiated_and_then_saved
  #   movie = Movie.new
  #   movie.title = "This is a title."
  #   movie.save
  # end

  ##READ
  def self.find_review_by_restaurant(restaurant_name)
    #look through table of reviews 
    #match restaurant name to user input(argument?)
    #return all reviews that match that instance name
    self.find_by :restaurant == restaurant_name
    puts :restaurant
  end 

  ##READ(MVP?)
  def self.find_review_by_id(customer_id, restaurant_id)
    puts "Enter your customer ID"
    customer_id = gets.chomp
    puts "Enter the restaurant ID"
    restaurant_id = gets.chomp
    review = Review.where(customer_id: customer_id, restaurant_id: restaurant_id)
    #we need to return
    #the customer and restaurant name. Add columns to join table?
    rating = review.pluck(:rating)
    if rating.length >= 1
      p  "Hello customer ##{customer_id}. You gave that restaurant a rating of #{rating.compact.sum / rating.length} hungry bellies!" 
    else p "You have yet to review that place."
  end
end 

#this is what we had when we left off the afternoon of 5/27
  # def self.find_review_by_id(customer_id)
  #   puts "Enter your customer ID"
  #   customer_id = gets.chomp
  #   review = Review.find_by(customer_id: customer_id)
  #   puts review
  # end


  #READ
  def self.find_max_review
    Review.maximum(:rating)
  end

  ##READ
  def self.ratings_sum
    self.sum(:rating)
  end 


  ##UPDATE (MVP)
  def self.update_review(customer_id)
    #binding.pry
    puts "Enter your customer ID"
    customer_id = gets.chomp
    puts "Enter the Restaurant whose review you'd like to amend"
    restaurant_id = gets.chomp 
    review = Review.where(customer_id: customer_id, restaurant_id: restaurant_id)
    puts review.pluck(:created_at, :rating)
    if review.length >= 2
    puts "OK. You've been to that restaurant #{review.length} times. Which visit would you like to amend?"
    visit_date_to_amend = gets.chomp 
    date_amended = review[visit_date_to_amend.to_i - 1]
    puts "OK. Upon reflecting, how many hungry bellies would you actually give this place?"
    new_rating = gets.chomp
    date_amended.update(rating: new_rating)
    else
    puts "Great! Upon reflecting, how many hungry bellies would you actually give this place?"
    new_rating = gets.chomp 
    review.update(rating: new_rating)
    end 
    #binding.pry
    puts "Thank you! You gave restaurant ##{restaurant_id} #{new_rating} hungry bellies!"
    puts review.pluck(:created_at, :rating)
    #Customer.all.map {|c| c.name }
    #find all reviews for a customer_id
    # customer = Customer.find_by(name: name)
    # customer.reviews.each do |r| puts
      #reviews_id 
      #restaurant name
      #current rating
    #iterate and list reviews belonging to that customer_id

    #ask user to type in review_id of what they want to update
    # puts "enter the review ID"
    # review_id = gets.chomp
    # review = Review.find(review_id)
    # #enter the new rating
    # review.update(rating: 6)
    # review.save
  end 

  def self.delete_review(customer_id)
    puts "Enter your customer ID"
    customer_id = gets.chomp
    puts "Enter the Restaurant whose review you'd like to delete"
    restaurant_id = gets.chomp 
    review = Review.where(customer_id: customer_id, restaurant_id: restaurant_id)
    puts review.pluck(:created_at, :rating)
    if review.length == 0
      puts "You have no reviews for that restaurant. Would you like to create one? (go back to main menu)"
    else 
    puts "What review would you like to delete?"
    review_to_delete = gets.chomp
    deleted_review = review[review_to_delete.to_i - 1].delete
    #binding.pry
    # review.save 
    puts "Thanks! You deleted #{deleted_review.created_at}!"
    end 
  end 

end 

# visit_date_to_amend = gets.chomp 
#     date_amended = review[visit_date_to_amend.to_i - 1]
#     puts "OK. Upon reflecting, how many hungry bellies would you actually give this place?"
#     new_rating = gets.chomp
#     date_amended.update(rating: new_rating)