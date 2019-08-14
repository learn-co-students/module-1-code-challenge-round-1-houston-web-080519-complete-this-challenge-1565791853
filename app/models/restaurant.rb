class Restaurant

  attr_accessor :restaurant, :customers
  attr_reader :name

  @@all = []

  def self.all
    return @@all
  end

  def self.find_by_name(name)

  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def customers
    customers = []
    Review.all.each do |review|
      if review.restaurant = self
        customers << review.customer
        # puts review.customer
      end
    end
    return customers
  end

  def reviews

  end

  def average_star_rating

  end

  def longest_review

  end

end
