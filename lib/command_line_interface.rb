require 'Nokogiri'
require 'pry'
require "./lib/listings.rb"
require "./lib/scraper.rb"

class CLI

  def self.run
    current = Listing.new('current')
    current.get_info
    html = current.get_html("#{current.max_price}", "#{current.zip_code}", "#{current.bedrooms}")
    Scraper.apartment_scraper("#{html}")
    choice = current.selection
    binding.pry
  end

  def self.new_search
    puts "Would you like another search? Y/N:"
    answer = gets.chomp
    if answer == "y" || if answer == "Y"
      CLI.run
    else

    end
  end
end
end
