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

 ##CREATE
  def self.new_review(customer_id, restaurant_id, rating)
    review = Review.new
    puts "enter your customer ID"
    customer_id = gets.chomp
    review.customer_id = customer_id
    puts "enter the restaurant ID"
    restaurant_id = gets.chomp
    review.restaurant_id = restaurant_id
    puts "enter your rating, 1-5"
    rating = gets.chomp 
    review.rating = rating
    review.save
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

  #READ
  def self.find_review_by_id(customer_id)
    puts "Enter your customer ID"
    customer_id = gets.chomp
    review = Review.find_by(customer_id: customer_id)
    puts review
  end

  #READ
  def self.find_max_review
    Review.maximum(:rating)
  end

  ##READ
  def self.ratings_sum
    self.sum(:rating)
  end 


  ##UPDATE
  def self.update_review(name)
    
    #find all reviews for a customer_id
    customer = Customer.find_by(name: name)
    customer.reviews.each do |r| puts
      #reviews_id 
      #restaurant name
      #current rating
    #iterate and list reviews belonging to that customer_id

    #ask user to type in review_id of what they want to update
    puts "enter the review ID"
    review_id = gets.chomp
    review = Review.find(review_id)
    #enter the new rating
    review.update(rating: 6)
    review.save
    end 
  end 

end 