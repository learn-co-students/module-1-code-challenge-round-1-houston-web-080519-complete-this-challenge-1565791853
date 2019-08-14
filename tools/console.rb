require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line



John = Customer.new("John", "Ball")
Mike = Customer.new("Mike", "Donland")
Barrette = Customer.new("Barrette", "Banner")
customer4 = Customer.new("Barrette", "Jones")
Subway = Restaurant.new("Subway")
Burger = Restaurant.new("Burger")
John.add_review(Subway, "The food is so tasty!", 5)
Mike.add_review(Burger, "The food is so bad!", 1)
Barrette.add_review(Subway, "The service is great!", 5)
John.add_review(Burger, "The food is not very good!", 2)
Barrette.add_review(Burger, "The service is okay-ish", 2)
Barrette.add_review(Subway, "The food is still amazing", 5)
John.add_review(Subway, "Tasty...Tasty...Tasty!", 5)








#puts Customer.all
#puts Restaurant.all
#puts Review.all
#puts John.num_reviews
#puts Barrette.num_reviews
#puts Barrette.restaurant
#puts Subway.customers
#puts Subway.reviews
#puts Subway.average_star_rating
#puts Subway.longest_review.content
#puts Customer.find_by_name(Barrette)
#puts Customer.find_all_by_first_name("Barrette")
#puts Customer.all_names
puts Restaurant.find_by_name(Subway)