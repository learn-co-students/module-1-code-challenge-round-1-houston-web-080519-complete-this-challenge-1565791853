class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select do |x|
      x.restaurant == self
    end
  end

  def customers
    reviews.map do |x|
      x.customer
    end
  end

  def average_star_rating
    total = 0
    avg = 0
    count = 0
    ratings = reviews.map do |review|
      review.rating
    end
    tot = ratings.each do |x|
      total += x
    end
    count = reviews.count
    # avg = tot / count  
    tot / count
  end

  def longest_review
    x = reviews.max do |a, b|
      a.content.length <=> b.content.length
    end
    x.content
  end

  def self.find_by_name(name)
    @@all.find do |x|
      x.name = name
    end
  end

end
