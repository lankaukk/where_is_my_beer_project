class WhereIsMyBeer::CLI
    def start
        puts "Welcome to the Find My Beer API Gem!"
        ask_zip
        display_local_breweries
    end

    def ask_zip
        puts "Enter the zip code for where you want to drink:"
        input = gets.strip.to_i
        postal_code = validate_input(input)
        @response = WhereIsMyBeer::API.fetch_data(postal_code)
    end

    def validate_input(input)
        until input >= 02101 && input <= 99524
            puts "Please enter a valid zip code."
            input = gets.strip.to_i
        end
        input
    end

    def display_local_breweries
        puts ""
        if @response != []
            @response.each do |result|
                puts "#{result["name"]}".colorize(:magenta)
                puts "#{result["street"]},".colorize(:blue) + " #{result["city"]},".colorize(:blue) + " #{result["state"]}".colorize(:blue)
                puts "Call #{result["phone"].insert(3, '-').insert(-5, '-')} to check hours and availability.".colorize(:cyan)
                puts ""
            end
        else 
            puts "Sad.".colorize(:cyan)
            puts "No where to drink there.".colorize(:blue)
            puts ""
        end

        puts "Would you like to check any other zip codes? (y/n)"
                input = gets.strip.downcase
                if input == "y" 
                    ask_zip
                    display_local_breweries
                else 
                    puts ""
                    puts "Goodbye."
                    puts ""
                    # exit program
                end
    end

end