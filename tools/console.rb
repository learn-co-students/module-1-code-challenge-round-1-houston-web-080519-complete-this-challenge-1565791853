require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line

customer1 = Customer.new("Richard", "Pitts", "Tony's")
customer2 = Customer.new("John", "Smith", "Flemings")
customer3 = Customer.new("Richard", "Jones", "Chick-fil-a")
customer4 = Customer.new("Richard2", "Jones2", "Tony's")

# name1 = "Richard"
# p Customer.find_all_by_first_name(name1)

restaurant1 = Restaurant.new("Tony", "a", "b", "c")
restaurant2 = Restaurant.new("Tony2", "a", "b", "c")
restaurant3 = Restaurant.new("Tony3", "a", "b", "c")
# p restaurant1.customers

name2 = "Tony"
p Restaurant.find_by_name(name2)