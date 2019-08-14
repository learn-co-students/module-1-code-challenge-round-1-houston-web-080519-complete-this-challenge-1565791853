class Review

      ## My Code

      @@all = []

      attr_accessor :restaurant, :content, :rating, :customer

    # given a restaurant object, some review content 
    # (as a string), and a star rating (as an integer), 
    # creates a new review and associates it with that 
    # customer and restaurant.
      def initialize(restaurant, content, rating)
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self
      end

      def self.all
        @@all
      end

      def customer
        newArray = []
        Customer.all.select do | customer |
            if customer.review == self
                newArray.push(customer)
            end
        end
        return newArray
      end


      def restaurant
        Restaurant.all.select do | restaurant |
            if restaurant.review == self
                newArray.push(restaurant) 
            end
        end
        return newArray
      end 

      def content 
        @content 
      end 



end

