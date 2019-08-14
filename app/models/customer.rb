class Customer 
  
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self 
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    review = Review.new(self, restaurant, content, rating)
  end 

  def num_reviews
    customer_reviews = Review.all.select {|review| review.customer == self}
    customer_reviews.count 
  end 

  def restaurant
    customer_reviews = Review.all.select {|review| review.customer == self}
    customer_reviews.map {|customer_review| customer_review.restaurant}
  end 

  def self.find_by_name(name)
    Customer.all.find {|customer| customer.full_name == name}
  end 

  def self.find_all_by_first(name)
    Customer.all.select {|customer| customer.first_name == name}
  end 

  def self.all_names 
    Customer.all.map {|customer| customer.full_name}
  end 

  def self.all 
    @@all 
  end 

end
