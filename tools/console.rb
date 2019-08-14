require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#### INSTANTIATE ####

chuck = Customer.new("Chuck", "Norris")
king = Restaurant.new("Burger King")
review_1 = Review.new(king, "Food was cold", 2, chuck)

#### METHODS TO TEST ####

# puts Customer.all #working!
# puts Restaurant.all #working!
# puts Review.all #working!

# puts chuck.add_review(king, "Greasy Delicious", 5)
# puts chuck.num_reviews #working!
# puts chuck.restaurants #working!

# puts king.customers #working!
# puts king.reviews #working!
# p king.average_star_rating
# puts king.longest_review

# puts Customer.find_by_name("Chuck Norris")
# puts Customer.find_all_by_first_name("Chuck")
# puts Customer.all_names

# puts Restaurant.find_by_name("Burger King")

# puts review_1.cutomer 
# puts review_1.restaurant 
# puts review_1.rating 
# puts review_1.content

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
