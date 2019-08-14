class Review
    @@all = []
    def self.all
     return @@all
    end 
    attr_accessor :author, :restaurant, :rating, review_content
    def initialize(author, restaurant, rating, review_content)
        @author = author
        @restaurant = restaurant
        @rating = rating 
        @review_content = review_content
        @@all.push( self )
    end 
    def customer
        return @author
    end 
    def restaurant
        return @restaurant
    end 
    def rating
        return @rating
    end 
    def content 
        return @review_content
    end 
end

