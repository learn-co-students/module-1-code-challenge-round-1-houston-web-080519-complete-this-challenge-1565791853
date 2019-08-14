require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

customer1 = Customer.new("First_Name_1", "Last_Name")
customer2 = Customer.new("First_Name_2", "Last_Name_2")

restaurant1 = Restaurant.new("Restaurant1")
restaurant2 = Restaurant.new("Restaurant2")

review1 = Review.new(customer1, restaurant1, "content1", 1)
review2 = Review.new(customer2, restaurant2, "content_2", 2)

customer1.full_name 
customer1.add_review(restaurant1, "content__3", 3)
customer1.num_reviews
customer1.restaurant
Customer.find_by_name("First_Name_1 Last_Name")
Customer.find_all_by_first("First_Name_1")
Customer.all_names 

restaurant1.customers
restaurant1.reviews 
restaurant1.average_star_rating
restaurant1.longest_review 
restaurant1. 


