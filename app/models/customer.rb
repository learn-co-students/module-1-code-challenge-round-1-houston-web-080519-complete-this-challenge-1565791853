class Customer
  attr_reader :first_name, :last_name

    @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all 
    @@all
  end

  def num_review
    total_reviews = 0
    Review.all.select do |review| review.reviewer.count == self
            total_reviews = self
        end 
        return total_reviews 
  end 


end



