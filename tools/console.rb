require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

kevin = Customer.new("Kevin", "Bagnall")
josh = Customer.new("Josh", "Miles")
cfa = Restaurant.new("CFA")
mcd = Restaurant.new("McD")
kevin.class
kevin.restaurants=(cfa)
kevin.restaurants=(mcd)

cfa.customers=(kevin)
cfa.customers=(josh)
mcd.customers=(kevin)
cfa.customers
Customer.all

kevin.add_review(cfa, 5, "Eat mor chikin")
kevin.add_review(mcd, 1, "I'm not loving it")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line