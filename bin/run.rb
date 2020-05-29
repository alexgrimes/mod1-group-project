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
puts
puts 
print "email: "
chosen_email = gets.chomp
current_user = Customer.find_by(email: chosen_email)

clear_screen!
if current_user
  puts "Welcome, #{current_user.name}!" 

  puts "Please pick what you would like to do!"
  puts
  puts "Press (1) to read your reviews"
  puts "Press (2) to edit your reviews"
  puts "Press (3) to delete one of your reviews"
  puts "Press (4) to create a review of a restaurant" 
  puts "Press (5) to exit"
  user_choice = gets.chomp
  clear_screen!
  
  while user_choice != "5"
    current_user.reload
    case user_choice
    when "1"
      clear_screen!
      # puts current_user 
      CliMethods.find_review_by_user_id(current_user)
    when "2"
      clear_screen!

      review_id = CliMethods.update_review(current_user)
      if review_id 
        puts "How many hungry bellies does it deserve?"
        new_review = gets.chomp
        review_id.update(rating: new_review)
        clear_screen!
      puts "Great! Your review has been updated!"
      end 
    when "3"
      clear_screen!
      
      review = CliMethods.update_review(current_user)
      review.delete
      clear_screen!
      puts "Your review has been deleted!"

    when "4"
      clear_screen!
     
      CliMethods.select_restaurant_from_list
      puts
      print "id: "
      chosen_id = gets.chomp
      Restaurant.find(chosen_id)
      puts
      puts "How many hungry bellies is this restaurant worthy of?"
      puts
      print "hungry bellies: "
      my_rating = gets.chomp
      clear_screen!
      new_review = Review.create(rating: my_rating, restaurant_id: chosen_id, customer_id: current_user.id)
      puts "Congratulations! A new review was created with the id of #{new_review.id}!"
    end

      puts
      puts
      puts
      puts "What else would you like to do?"
      puts
      puts "Press (1) to read your reviews"
      puts "Press (2) to edit your reviews"
      puts "Press (3) to delete one of your reviews"
      puts "Press (4) to create a review of a restaurant" 
      puts "Press (5) to exit"
      puts
      user_choice = gets.chomp
    end
  
else
  puts "Sorry! Couldn't log you in!"
end
