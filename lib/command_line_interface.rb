require 'Nokogiri'
require 'pry'
require "./lib/listings.rb"
require "./lib/apartmentsearch.rb"



# run method

def get_info
  puts "Welcome to your apartment search!\n"
  puts "Please enter the zip code you would like to search in: "
  @zip_code = gets.chomp
  puts "Please enter your max price range: "
  @price = gets.chomp
  puts "Please enter the minimum amount of bedrooms: "
  @bedrooms = gets.chomp
end

binding.pry

#html method
  #apply zip/rooms/price to html

#selection
  #return site of selected post

#clear_search
  #clear all including html

#create_new_search
  #
