class Customer
  attr_reader :first_name, :last_name
 @@all = []
 def self.all
  return @@all
 end 
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all.push(self)
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  def add_review(full_name, restaurant, content, rating)
    @restaurant = restaurant
    @content = content
    @rating = rating 
  end 
  def num_reviews
    result = []
    Review.all.count do |num_reviews |
      result.push(num_reviews)
    end
    return result
  end
    def restaurants
      result = []
      customer.

    end 
    def self.find_by_name(full_name)
      result = @all.find {|full_name| name.include?("name")}
        end 
      return result
    end 
    def self.find_by_name(first_name)
      result = @all.find {|first_name| name.include?("name")}
        end 
      return result

      end 
    end 
    def self.all_names
      @all
    end 

  end 
end 
