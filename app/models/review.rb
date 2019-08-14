class Review
  @@all = []
  attr_accessor :restaurant, :rating
  def initialize 
    @restaurant = restaurant
    @rating = rating 
    @@all << self
  end

  def self.all
    @@all
  end

  def customer 
    
end

