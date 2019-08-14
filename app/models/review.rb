class Review

    attr_accessor :restaurant, :content, :rating

    @@all = []

    def initialize(restaurant, content, rating)
        @restaurant = restaurant
        @content = content
        @rating = rating
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

  
end

