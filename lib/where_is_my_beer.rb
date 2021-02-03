#this sis the environment file

module WhereIsMyBeer
  # class Error < StandardError; end #this way already here idk if i need it 
  
end

require 'pry'
require 'rest-client'
require 'json'
require 'httparty'
require 'colorize'

require_relative "./where_is_my_beer/api" 
require_relative "./where_is_my_beer/brewery" 
require_relative "./where_is_my_beer/cli" 
require_relative "./where_is_my_beer/version" 