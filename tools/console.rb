require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# binding.pry
# 0 #leave this here to ensure binding.pry isn't the last line

bob = Customer.new("Bob", "Jones")
greenseed = Restaurant.new("Green Seed Vegan")
review = Review.new(bob, greenseed, "good food", 5)

# puts bob.reviews
# puts bob.full_name
# puts bob.restaurants
# puts Customer.find_by_name("Bob Jones")
# puts Customer.find_all_by_first_name("Bob")
# puts Customer.all_names
# puts greenseed.reviews
# puts greenseed.customers
puts greenseed.average_star_rating
# puts greenseed.longest_review
# puts Restaurant.find_by_name("Green Seed Vegan")

