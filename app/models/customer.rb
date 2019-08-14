class Customer

  @@all = []

  attr_reader :first_name, :last_name, :locations

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @locations = []
    @reviews = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    return @@all
  end

  def restaurants=(restaurant_object)
    @locations << restaurant_object
  end

  def restaurants
    return @locations
  end

  def add_review(restaurant_object, string_content, integer_rating)
    review = Review.new(self, restaurant_object, integer_rating, string_content)
    @reviews << review
  end

  def num_reviews
    return @reviews.length
  end

end
