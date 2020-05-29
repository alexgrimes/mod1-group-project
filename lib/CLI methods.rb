class CliMethods 


  def self.select_restaurant_from_list
    puts "Please type the id of the restaurant:"
    puts
    Restaurant.all.each do |restaurant| 
      puts "#{restaurant.id}. #{restaurant.name} "
    end
  end


  def self.find_review_by_user_id(current_user)
    #binding.pry 
    reviews_info = current_user.reviews.map {|r| "#{r.rating} hungry bellies for #{r.restaurant.name}" }
    p "Hello #{current_user.name}! These are the ratings for the restaurants you've reviewed!"
    puts reviews_info
  end 

  ##UPDATE (MVP)
  def self.update_review(user)
    #binding.pry
    puts "Here are your reviews:"
    puts 
    user.reviews.map do |review| puts "ID: #{review.id}       #{review.restaurant.name}:   #{review.rating} hungry bellies" end
      puts 
      puts "Enter the Review ID you'd like to amend"
      puts 
      print "ID#: "
    review_id = gets.chomp
    Review.find(review_id)
  end 

    


    
  
end 
