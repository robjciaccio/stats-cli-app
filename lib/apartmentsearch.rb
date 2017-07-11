require 'pry'
require 'Nokogiri'

class Apartment

  attr_accessor :max_price, :zip_code, :bedrooms


  def self.get_info
    puts "Welcome to your apartment search!\n"
    puts "Please enter the zip code you would like to search in: "
    @zip_code = gets.chomp
    puts "Please enter your max price range: "
    @max_price = gets.chomp
    puts "Please enter the minimum amount of bedrooms: "
    @bedrooms = gets.chomp
  end
  
end
