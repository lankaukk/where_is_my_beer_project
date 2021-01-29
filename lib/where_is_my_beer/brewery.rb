class WhereIsMyBeer::Brewery

    attr_accessor :postal_code, :name, :phone, :street, :city, :state

    @@all =[]

    def initialize(name, phone, street, city, state)
        @name = name
        @phone = phone
        @street = street
        @city = city
        @state = state
        self.save
    end

    def save 
        @@all << self
    end

    def self.all
        @@all
    end

end

