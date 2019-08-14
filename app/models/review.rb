class Review

    attr_accessor :customer, :restaurant

    @@all = []
    @@restaurants = []
    @@customers = []
    @@reviews = []
    @@ratings = []
    @@reviewObjects = []

    def self.all
      return @@reviewObjects
    end

    def initialize(restaurant, content, rating)
        @@restaurants << restaurant
        @@reviews << content
        @@ratings << rating
        @@reviewObjects << self
        self.restaurant = restaurant

    end

    def customer
        return @@customers
    end

    def restaurant

    end

    def rating

    end

    def content

    end
  
end

