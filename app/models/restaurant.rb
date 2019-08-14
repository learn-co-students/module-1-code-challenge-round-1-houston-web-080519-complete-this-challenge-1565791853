class Restaurant

  @@all = []

  attr_reader :name, :patrons

  def initialize(name)
    @name = name
    @patrons = []
    @@all << self
  end

  def self.all
    return @@all
  end

  def customers=(customer_object)
    @patrons << customer_object
  end

  def customers
    return @patrons
  end

  def reviews

  end

end
