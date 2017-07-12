require 'Nokogiri'
require 'pry'
require "./lib/listings.rb"
require "./lib/scraper.rb"

class CLI

  def self.run
    current = Listing.new('current') #creates new listing 'current'
    current.get_info #calls Listing class method to get info and set class vatiables
    html = current.get_html("#{current.max_price}", "#{current.zip_code}", "#{current.bedrooms}")
    #above creates html link, by using Listing's get_html class method
    Scraper.apartment_scraper("#{html}") #begins scraping process using Scraper instance method apartment_scraper
    choice = current.selection #creates variable of 'listing selection number' using Listings selection class method
    decision = Listing.display_choice(choice) #turns lising selection variable into an integer using Listing
    #instance method.
    Listing.congrats #congratualtes winner
    puts "#{decision}" #shows selection
  end

  def self.new_search #used for future functionality
    puts "Would you like another search? Y/N:"
    answer = gets.chomp
    if answer == "y" || if answer == "Y"
      CLI.run
    else
    end
  end
end
end
