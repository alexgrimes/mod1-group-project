class Customer < ActiveRecord::Base
  has_many :reviews 
  has_many :restaurants, through: :reviews

  # def change
  #   create_table :customers do |t|
  #     t.string :name
  #     t.string :email
  #   end
  # end 
end

# A user can have many reviews 
# A user can have many restaurants through reviews