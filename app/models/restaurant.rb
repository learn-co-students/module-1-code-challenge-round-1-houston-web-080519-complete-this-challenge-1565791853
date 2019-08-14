class Restaurant
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    array1 = []
    Restaurant.all.each do |restaurant|
      Review.all.each do |review|
        if review.restaurant == restaurant
          array1 << review.customer
        end
      end
    end
    array1.uniq
  end

  def reviews
    array1 = []
    Review.all.each do |review|
      if review.restaurant == self
        array1 << review
      end
    end
    array1
  end
    


  def average_star_rating
    array1 = []
    Review.all.each do |review|
      if review.restaurant == self
        array1 << review.rating
      end
    end
    length = array1.length 
    sum = array1.sum
    puts sum/length
  end

  def longest_review
    most = 0
    name = nil
    Review.all.each do |review|
      stuff = []
      if review.restaurant == self
        stuff << review.content
      end
      if stuff.length > most 
        most = stuff.length
        name = review
      end
    end
      name
  end

  def self.find_by_name(name)
    array = []
    Restaurant.all.each do |place|
      if place == name
        array << place
      end
    end
    array
  end
end

