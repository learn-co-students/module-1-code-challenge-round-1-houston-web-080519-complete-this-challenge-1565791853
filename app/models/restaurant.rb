class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end 

  def name 
    @name 
  end

  # def customers
  #   # list = []
  #   # Customers.all.select do |customer| customer.reviewer
  #   end 
  # end 


  # def reviews
  #   # Reivew.all.select do |review| review. 
  # end 


end

