class Customer
  attr_reader :first_name, :last_name, :restaurant
  @@all = []
  def initialize(first_name, last_name, restaurant)
    @first_name = first_name
    @last_name  = last_name
    @restaurant = restaurant
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    first_customer = find do {|full_name| Customer.full_name}
      return first_customer
    end

  def self.find_by_first_name(first_name)
    array = []
    array.all.push(first_name)
  end

  def self.all_names
    array = []
    array.each.push(full_name)
  end

  def num_reviews 
    

end