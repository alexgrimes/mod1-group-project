class Customer < ActiveRecord::Base
  has_many :reviews 
  has_many :restaurants, through: :reviews

  def create_review(args = {} )
    Review.create do |m|
      m.rating = args[:rating]
      m.restaurant = args[:restaurant]
      m.save
    end
  end 

end

# A user can have many reviews 
# A user can have many restaurants through reviews