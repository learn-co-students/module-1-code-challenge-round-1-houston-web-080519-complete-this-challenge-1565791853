class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    array = []
    Review.all.each do |review|
      if review.customer == self
        array << review.customer
      end
    end
    array.length
  end

  def restaurant
    array = []
    Review.all.each do |review|
      if review.customer == self
        array << review.restaurant
      end
    end
    puts array.uniq
  end

  def self.find_by_name(name)
    x = nil
    y = nil
    Customer.all.each do |customer|
      if customer == name
        x =  customer.first_name
        y =  customer.last_name
      end
    end
    puts x, y
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
  end
end

def self.all_names
  array = []
  Customer.all.each do |customer|
    x =customer.first_name
    y = customer.last_name
    z = "#{x} #{y}"
    array << z
  end
  array
end

end

