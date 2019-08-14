class Customer
    attr_reader :first_name, :last_name, :restaurant, :content, :rating, :reviews

    @@all = []

    def initialize(first_name, last_name)
      @first_name = first_name
      @last_name  = last_name
      @reviews = []
      save
    end

    def save
      @@all << self
    end

    def self.all
      @@all
    end

    def full_name
      "#{first_name} #{last_name}"
    end

    def add_review(restaurant, content, rating)
      @reviews.push(Review.new(restaurant, content, rating))
    end

    def restaurants
      array = []
      Customer.all.select do |customer|
        customer.reviews.each do |review|
          array.push(review.restaurant.name)
        end
      end
      array
    end


    def num_reviews
      count_reviews = 0
      Customer.all.select do |customer|
        if customer.full_name == self.full_name
          count_reviews = customer.reviews.length
        end
      end
    end
          

end
