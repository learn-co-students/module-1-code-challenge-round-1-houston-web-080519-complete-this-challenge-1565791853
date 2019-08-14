require_relative './customer.rb'
require_relative './restaurant.rb'
require_relative './review.rb'

shake = Restaurant.new("Shake Shack")
lo = Restaurant.new("Sit Lo")
whata = Restaurant.new("Whataburger")

josh = Customer.new("Joshua","Hill")
bill = Customer.new("Bill","Nye")

josh.add_review(shake, "Solid Burgers", 5)
josh.add_review(whata, "Classic", 5)
bill.add_review(whata, "!= In and Out", 2)
bill.add_review(lo, "Good, but $$$", 4)

puts "Josh reviews: #{josh.num_reviews}"
puts "Bill reviews: #{bill.num_reviews}"
# puts "All reviews: #{Review.all}"

# Restaurant.all.each do |rest|
#     puts rest.name
# end

# puts josh.restaurants[0].name