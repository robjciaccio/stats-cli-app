require 'Nokogiri'
require 'pry'
require "./lib/listings.rb"
require "./lib/scraper.rb"


class CLI
  
  def self.run
    puts "Welcome to your apartment search!\n"
    puts "Please enter the zip code you would like to search in: "
    zip_code = gets.chomp
    puts "Please enter your max price range: "
    max_price = gets.chomp
    puts "Please enter the minimum amount of bedrooms: "
    bedrooms = gets.chomp
    current = Listing.new(max_price, zip_code, bedrooms)
    html = Listing.get_html
    Scraper.apartment_scraper(html)
  end
  binding.pry

#get_info
  #run get info method

#html method
  #apply zip/rooms/price to html

#selection
  #return site of selected post



#create_new_search
  #
end
