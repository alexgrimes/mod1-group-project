require 'pry'
Review.destroy_all
Restaurant.destroy_all
Customer.destroy_all




20.times do 
  Customer.create(name: Faker::Name.name, email: Faker::Internet.email)
  Restaurant.create(name: Faker::Restaurant.name, phone_number: Faker::PhoneNumber.phone_number, location: Faker::Address.street_address)
end 

100.times do
  Review.create(customer: Customer.all.sample, restaurant: Restaurant.all.sample, rating: rand(10))
end 