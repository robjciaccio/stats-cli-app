require 'pry'
require 'nokogiri'
require 'open-uri'

class Scraper


  def self.apartment_scraper(html)
    listing = []
    price = []
    page = Nokogiri::HTML(open(html))
    listings = page.css('.rows')
    listings.css('.result-title').css('.hdrlnk').map do |i|
      listing << i.text
    end
    listings.css('.result-price').map do |p|
      price << p.text
    end
      selection = []
      counter = 0
      i = 0
      while counter < 25
        selection << "#{counter+=1}. #{price[i]} #{listing[i]}"
        i+=1
      end
      puts selection
    end

end
