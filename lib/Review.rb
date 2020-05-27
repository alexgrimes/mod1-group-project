class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :customer

  def create_review(args = {} )
    Review.create do |r|
      r.rating = args[:rating]
      r.restaurant = args[:restaurant]
      r.save
    end
  end 

  # def new_review(attributes)
  #   review = Review.new
  #   review.rating = :rating
  #   review.restaurant = :restaurant
  #   review.save 
  # end

  # def can_be_instantiated_and_then_saved
  #   movie = Movie.new
  #   movie.title = "This is a title."
  #   movie.save
  # end

  def self.find_review_by_restaurant(restaurant_name)
    #look through table of reviews 
    #match restaurant name to user input(argument?)
    #return all reviews that match that instance name
    self.find_by :restaurant == restaurant_name
    puts :restaurant
  end 

  def self.find_max_review
    Review.maximum(:rating)
  end

  def self.ratings_sum
    self.sum(:rating)
  end 

  def self.update_review
    review = Review.find_by(:customer, "Sid")
    review.update(:rating, 6)
    review.save
  end 

end 