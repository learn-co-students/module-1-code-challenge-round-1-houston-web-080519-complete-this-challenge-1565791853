class Restaurant

    @@all = []

    def initialize 
        @@all.push(self)

    end
    
    def self.all
        @@all
    end

    def add_review
        @add_review
    end
    

end
