require 'pry'
require_relative './review.rb'
require_relative './restaurant.rb'
require_relative './customer.rb'


michael_evans = Customer.new("Michael", "Evans")

johnny_bravo = Customer.new("Johnny", "Bravo")

cfa = Restaurant.new("Chick-Fil-A")

bk = Restaurant.new("Burger King")

michael_evans.add_review(bk, "good", 5)

michael_evans.add_review(cfa, "great", 5)

johnny_bravo.add_review(cfa, "bad", 4)

p michael_evans.num_reviews

michael_evans.restaurants





