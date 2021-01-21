class WhereIsMyBeer::CLI
    def start
        puts "Welcome to the Find My Beer API Gem!"
        WhereIsMyBeer::API.get_stuff
    end

    def menu 
        puts "In what state are you looking to drink?"
        list_states
    end

    def list_states

    end

end