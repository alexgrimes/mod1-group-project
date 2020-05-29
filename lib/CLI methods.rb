class CliMethods 


  def self.select_restaurant_from_list
    puts "Please type the id of the restaurant:"
    puts
    Restaurant.all.each do |restaurant| 
      puts "#{restaurant.id}. #{restaurant.name} "
    end
  end


  def self.find_review_by_user_id(current_user)
    review_info = current_user.reviews.pluck(:rating)
    p "Hello #{current_user.name}! These are the ratings for the restaurants you've reviewed!"
    puts  "#{review_info} hungry bellies!" 
  end 


 

  ##UPDATE (MVP)
  def self.update_review(user)
    #binding.pry
    puts "Here are your reviews:"
    user.reviews.each do |review| puts "#{review.id}: #{review.rating}" end
      puts "Enter the Review ID you'd like to amend"
    review_id = gets.chomp
    Review.find(review_id)
  end 

    


    
  
end 
