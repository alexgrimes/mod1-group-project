class Restaurant < ActiveRecord::Base
  has_many :reviews 
  has_many :customers, through: :reviews
end 

# A restaurant can have many reviews 
# A restaurant can have many users through reviews