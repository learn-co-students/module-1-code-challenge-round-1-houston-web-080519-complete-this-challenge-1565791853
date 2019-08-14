class Customer

    @@all = []

    attr_accessor :restaurant, :content, :rating
    

    def initialize(restaurant, content, rating)
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all.push(self)

    end

    def self.all
       return @@all
    end

    def reviews
        result = []
        Customer.all.each do |review|
            if Customer.review == self
                result.push(review)
            end
        end
        return result
    end
end
