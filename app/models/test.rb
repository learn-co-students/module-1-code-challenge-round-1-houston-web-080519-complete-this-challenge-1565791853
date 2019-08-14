require_relative  './customer.rb'
require_relative  './restaurant.rb'
require_relative './review.rb'


israel = Customer.new("Israel", "Sanchez")

puts israel.full_name


whataburger = Restaurant.new("Whataburger")

puts whataburger.name

review = Review.new("Now thats a burger!")
review2 = Review.new("It was ok.")
review3 = Review.new ("Tasted like sh**!")

puts review.name 

#i took way to much time thinking ahout what to do next.
# i understand what im doing but why cant i seem to remember? 