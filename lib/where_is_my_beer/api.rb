class WhereIsMyBeer::API

    def self.fetch_data(zip)
        url = "https://api.openbrewerydb.org/breweries?by_postal=#{zip}"
        response = HTTParty.get(url)
        response.parsed_response

        response.each do |brewery|
            name = brewery["name"]
            phone = brewery["phone"]
            street = brewery["street"]
            city = brewery["city"]
            state = brewery["state"]
            WhereIsMyBeer::Brewery.new(name, phone, street, city, state)
        end

        # binding.pry 
        # call:  WhereIsMyBeer::Brewery.all
    end

end