class WhereIsMyBeer::API

    def self.get_stuff
        stuff = RestClient.get('https://raw.githubusercontent.com/openbrewerydb/openbrewerydb/master/breweries.json') 
        @stuff = JSON.parse(stuff)
        @stuff.each do |stuff|
            WhereIsMyBeer::States.new_stuff_from_api(states)
        end
    end

end