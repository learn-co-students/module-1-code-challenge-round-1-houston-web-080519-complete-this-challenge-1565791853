class Customer

  attr_reader :first_name, :last_name, :restaurant, :review

  def initialize(first_name, last_name. restaurant, review)
    @first_name = first_name
    @last_name  = last_name
    @restaurant = restaurant
    @review = review
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  @@all = []

  def self.all
    @@all
  end



  def add_review(restaurant, content, rating)
    review = Review.new(restaurant, content, rating)
    review.customer = self
  end  


  # Possible Alternative!
  # def num_reviews
  #   numberOfReviews = 0
  #   Customer.all.select do | customer |
  #     if customer.review == self
        
  #     end
  #   end

  # end

  def num_reviews
    @review.count 
  end



  def restaurants
    @restaurant.uniq
  end


  # Difficulty in breaking apart name variable!
  def find_by_name(name)
    
  end


  # DONE
  def self.find_all_by_first_name(name)
    nameArray = []
    Customer.all.select do | customer |  
    if customer.first_name == name 
      nameArray.push(customer)
    end
    end
    return nameArray
    end

  # DONE
  def self.all_names
    newArray = []
    Customer.all.map do | customer |
      newVar = customer.full_name
      newArray.push(newVar)
    end
    return newArray
  end

end
