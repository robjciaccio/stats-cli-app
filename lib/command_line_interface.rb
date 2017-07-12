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
  end

#selection
  #return site of selected post
  def self.new_search
    Listing.reset_all
    run
  end
end
