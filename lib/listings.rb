require 'pry'
require 'nokogiri'
require 'open-uri'

class Scraper

    r = []
    html = "https://newyork.craigslist.org/search/aap?query=park+slope&availabilityMode=0"
    page = Nokogiri::HTML(open(html))
    listing = page.css('.rows')
    listing.css('.result-title').css('.hdrlnk').map do |i|
      r << i.text
    end
    binding.pry




  def self.get_zip_and_max
    puts "What Zip code are you looking for an apartment in?"
    zip_code = gets.chomp
    puts "what is your max price?"
    max_price = gets.chomp
    html = "https://newyork.craigslist.org/search/aap?postal=#{zip_code}&max_price=#{max_price}&availabilityMode=0"
    html.to_s
    html
  end

end
