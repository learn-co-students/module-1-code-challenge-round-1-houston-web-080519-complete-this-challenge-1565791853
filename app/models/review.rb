class Review

    attr_accessor :customer, :content, :rating

    @@all = [] 

    def initialize(customer, restaurant, content, rating)
        @customer = customer 
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self 
    end 

    def customer 
        @customer
    end 

    def restaurant
        @restaurant
    end 

    def rating 
        @rating 
    end 

    def content 
        @content 
    end 

    def self.all 
        @@all 
    end 

end

