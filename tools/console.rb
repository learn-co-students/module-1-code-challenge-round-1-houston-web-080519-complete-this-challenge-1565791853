require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

puts "Customer.new"
emily = Customer.new("Emily", "Miller")
puts emily.class == Customer

puts "Restaurant.new"
panera = Restaurant.new("Panera")
puts panera.class == Restaurant

puts "Review.customer"
good = Review.new(emily, panera)
puts good.customer == emily

puts "Review.restaurant"
puts good.restaurant == panera


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#binding.pry
#0 #leave this here to ensure binding.pry isn't the last line