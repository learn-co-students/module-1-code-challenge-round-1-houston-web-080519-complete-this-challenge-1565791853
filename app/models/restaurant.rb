class Restaurant
  attr_reader :name, :review
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do {|name| class.self }
    end

  def customers 
    self.customers map do |customer|
      Restaurant.customer 
    end

  def reviews 
    self.review map do |review|
      Restaurant.review 
    end

  def average_star_rating 
    

  
end
