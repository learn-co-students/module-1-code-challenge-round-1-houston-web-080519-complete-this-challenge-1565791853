require_relative './Customer.rb'
require_relative './Restaurant.rb'
require_relative './Review.rb'


puts "Chandon is a customer"
puts chandon = Customer.new

puts "customer is eating"
puts customer_1 = Restaurant.new

puts "customer puts in a review"
puts review_1 = Review.new

puts "Customer.all"
puts Customer.all == chandon

# puts "my favorite restuarant"
# puts Customer.restaurant 


