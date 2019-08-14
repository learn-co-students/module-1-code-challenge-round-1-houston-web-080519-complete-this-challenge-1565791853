class Review
    
    @@all = []

    attr_reader :customer, :restaurant
    attr_accessor :rating, :content

    def initialize(customer_object, restaurant_object, integer_rating, string_content)
        @customer = customer_object
        @restaurant = restaurant_object
        @rating = integer_rating
        @content = string_content
        @@all << self
    end

    def self.all
        @@all
    end

    def customer
        result = []
        Customer.all.each do |customer|
            if customer == self.customer
                result << customer
            end
        end
        return result
    end
    
end

