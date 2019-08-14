class Customer
  attr_reader :first_name, :last_name
  attr_accessor :customer

  @@all = []
  @@reviews = []
  @@restaurants = []

  def self.all
    return @@all
  end

  def self.find_by_name(name)

  end

  def self.find_all_by_first_name(name)

  end
  
  def self.all_names

  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    newReview = Review.new(restaurant, content, rating)
    newReview.customer = self
    @@restaurants << restaurant
  end

  def num_reviews
    numReviews = []
    Review.all.each do |review|
      if review.customer = self
        numReviews << review
      end
    end
    return numReviews.length
  end

  def restaurants
    return @@restaurants
  end

end
