require 'pry'
require_relative '../config/environment'

def clear_screen!
  puts "\e[H\e[2J"
end

puts clear_screen!

welcome = ("
██████╗░███████╗██╗░░░██╗██╗███████╗░██╗░░░░░░░██╗
██╔══██╗██╔════╝██║░░░██║██║██╔════╝░██║░░██╗░░██║
██████╔╝█████╗░░╚██╗░██╔╝██║█████╗░░░╚██╗████╗██╔╝
██╔══██╗██╔══╝░░░╚████╔╝░██║██╔══╝░░░░████╔═████║░
██║░░██║███████╗░░╚██╔╝░░██║███████╗░░╚██╔╝░╚██╔╝░
╚═╝░░╚═╝╚══════╝░░░╚═╝░░░╚═╝╚══════╝░░░╚═╝░░░╚═╝░░

███████╗██╗███╗░░██╗██████╗░███████╗██████╗░
██╔════╝██║████╗░██║██╔══██╗██╔════╝██╔══██╗
█████╗░░██║██╔██╗██║██║░░██║█████╗░░██████╔╝
██╔══╝░░██║██║╚████║██║░░██║██╔══╝░░██╔══██╗
██║░░░░░██║██║░╚███║██████╔╝███████╗██║░░██║
╚═╝░░░░░╚═╝╚═╝░░╚══╝╚═════╝░╚══════╝╚═╝░░╚═╝
")
puts welcome
puts
puts
puts "Welcome to ReviewFinder! We're happy to see you again."
puts "Please enter your email below to `sign in`"
#puts Customers.all.map { |c| c.email }
puts
puts 
print "email: "
chosen_email = gets.chomp
#current_user = Customers.find_by(email: chosen_email)

clear_screen!
#if current_user
  #puts "Welcome, #{current_user.name}!" 

  puts "Please pick what you would like to do!"
  puts
  puts "Press (1) to read your reviews"
  puts "Press (2) to edit your reviews"
  puts "Press (3) to delete one of your reviews"
  puts "Press (4) to read reviews from a restaurant" 
  puts "Press (5) to exit"
  user_choice = gets.chomp
  clear_screen!
  
  while user_choice != "5"
    case user_choice
    when "1"
      clear_screen!
    
      puts "Here's what you've reviewed so far:"
      puts
      puts "press (6) to return to main menu"
      puts
     # puts current_user.reviews
    when "2"
      clear_screen!
    
      puts "Editing my Reviews now!"
      puts
      puts "press (6) to return to main menu"
      puts
    when "3"
      clear_screen!
      
      puts "Deleting my Review now!"
      puts
      puts "press (6) to return to main menu"
      puts
    when "4"
      clear_screen!
     
      puts "Selecting Restaurant to see Reviews now!"
      puts
      puts "press (6) to return to main menu"
      puts
    end

      puts
      puts
      puts
      puts "Please pick what you would like to do!"
      puts
      puts "Press (1) to read your reviews"
      puts "Press (2) to edit your reviews"
      puts "Press (3) to delete one of your reviews"
      puts "Press (4) to read reviews from a restaurant" 
      puts "Press (5) to exit"
      puts
      user_choice = gets.chomp
    end
  
#else
  #puts "Sorry! Couldn't log you in!"
#end


## means these are the CRUD methods that were working up to 
## MVP status (with what kind of method behind)

# Review.review_with_a_hash_of_attributes
# Review.connection
# current_customer = Customers.find_by(name: chosen_name)
##R Review.find_review_by_id(5, 5)
##U Review.update_review("Alex")
##C Review.new_review(5, 3, 5) [mvp?]
# Review.create_review(rating: 4, restaurant: "Burger Palace")
# Review.find_max_review
# Review.ratings_sum
# Review.find_review_by_restaurant("Burger Palace")

binding.pry
puts "hello world"
