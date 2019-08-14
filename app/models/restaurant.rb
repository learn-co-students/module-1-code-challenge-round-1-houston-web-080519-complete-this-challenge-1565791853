class Restaurant
  attr_reader :name
  @@all = []
 def self.all
  return @@all
 end 

  def initialize(name)
    @name = name
    @@all.push(self)
  end
  def self.find_by_name
    result = @all.find {|name| name.include?("name")}
    return result
  end 
  def customers
    return Review.customer.all
  end 
  def reviews
    return Review.review_content.all
  end 
  def average_star_rating
  return Review.rating.average 
  end 
  def longest_review
   return  Review.review_content.map(&:length).max 
  end 
end
