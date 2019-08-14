class Restaurant
  @@all = []
  attr_reader :name, customers

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def customers
    Review.customer.find_all.uniq do |customer|
      Review.restaurant == self
    end
  end

  def reviews
    array = []
    if Review.restaurant == self
      array.push(review)
    end
  end
  return array
end

  def self.all
    @@all
  end

end
