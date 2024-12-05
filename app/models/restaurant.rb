class Restaurant
  attr_reader :name, :customers, :reviews

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    reviews = []
    Review.all.each do | review | reviews << review.customer
      if review.restaurant == self
      end
    end
    return reviews
  end

  def reviews
    Review.all.select { | review | review.restaurant == self}
  end

  def average_star_rating
    ratings = []
    self.reviews do | review | ratings << review.rating
    end
    return ratings
  end

end

