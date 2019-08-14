class Review

    @@all = []

    def initialize(name)
        @name = name 
    end

    def self.all
        @@all 
    end

    def name
        @name 
    end

    def reviewer
        Customer.full_name
    end 

  
end

