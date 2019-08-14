class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def restaurants
    reviews = []
    Review.all.each do | review | reviews << review.restaurant
      if review.customer == self
      end
    end
    return reviews
  end

  def reviews
    Review.all.select { | review | review.customer == self}
  end

  def num_reviews
    self.reviews.length
  end


end

