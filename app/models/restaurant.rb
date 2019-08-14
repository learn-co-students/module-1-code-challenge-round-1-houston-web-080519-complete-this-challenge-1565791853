class Restaurant

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def customers
    restaurant_reviews = Review.all.select {|review| review.restaurant == self}
    restaurant_reviews.map {|review| review.customer}
  end 

  def reviews 
    restaurant_reviews = Review.all.select {|review| review.restaurant == self}
    return restaurant_reviews 
  end 

  def average_star_rating
    restaurant_reviews = Review.all.select {|review| review.restaurant == self}
    restaurant_ratings = restaurant_reviews.map {|review| review.rating}
    restaurant_ratings_total_sum = restaurant_ratings.sum 
    restaurant_ratings_total_number = restaurant_ratings.count 
    average_star_rating = restaurant_ratings_total_sum/restaurant_ratings_total_number
    return average_star_rating 
  end 

  def longest_review 
    longest_review = nil 
    review_content = nil 

    restaurant_reviews = Review.all.select {|review| review.restaurant == self}
    restaurant_reviews = restaurant_reviews.each {|review| 
      if review.content.length > 0 
        longest_review = review
        review_content = review.content 
      end 
    }
    return "longest_review: #{longest_review} review_content: #{review_content} " 
  end 

  def self.find_by_name(name)
    Restaurant.all.find {|restaurant| restaurant.name == name}
  end 

  def self.all 
    @@all 
  end 



end
