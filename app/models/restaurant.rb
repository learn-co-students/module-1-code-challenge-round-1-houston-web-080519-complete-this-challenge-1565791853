class Restaurant
    attr_reader :name, :customers

    @@all = []

    def initialize(name)
      @name = name
      save
    end

    def self.all
      @@all
    end

    def save
      @@all << self
    end

    def reviews
      review_array = []
      Review.all.select do |review|
        if review.restaurant == self
          review_array.push(review)
        end
      end
      review_array
    end

    def customers
      Review.all.select do |review|
      
      end
    end




end
