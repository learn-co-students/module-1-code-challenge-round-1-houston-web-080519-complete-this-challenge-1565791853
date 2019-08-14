class Restaurant

  @@all = []

  attr_accessor :name, :customers, :review, :rating

  def initialize(name, customers, review, rating)
    @name = name
    @customers = []
    @review = []
    @rating = []
    @@all << self
  end

  def self.all
    @@all
  end

    ## My Code

    def self.find_by_name(name)
      Restaurant.all.select do | restaurant |
        restaurant.name == name
      end
    end


    def customers
      newArray = [] 
      Customer.all.select do | customer |
        if customer.restaurant == self.name
          newArray.push(customer)
        end
      end
      return newArray
    end

    def reviews
      newArray = []
      Review.all.select do | review |
        if review.restaurant == self
          newArray.push(review)
        end
      end
      return newArray
    end

    # So your going to call on the reviews function, returning all of the 
    # applicable reviews
    def average_star_rating
      sum = 0 
      reviews.each { | a | sum += a }
      return sum / reviews.length 
    end

    # This is my best guess
    def longest_review
      Review.all.select do | review |  
        review.max
      end
    end




end
