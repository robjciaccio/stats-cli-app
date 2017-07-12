require 'pry'
require 'nokogiri'
require 'open-uri'

class Scraper

  @@selection = []


  def self.apartment_scraper(html) #html coming from get_html in Listing
    listing = []#will have apartment description
    price = [] #Will have price for each
    page = Nokogiri::HTML(open(html)) #save open website into page variable
    listings = page.css('.rows')
    listings.css('.result-title').css('.hdrlnk').map do |i| #description of apartments
      listing << i.text #descriptions
    end
    listings.css('.result-price').map do |p| #prices of apartments
      price << p.text #prices
    end
      counter = 0
      i = 0
      while counter < 25
        @@selection << "#{counter+=1}. #{price[i]} #{listing[i]}" #puts each apartment in own array
        i+=1
      end
      puts @@selection #returns array of apartments
    end

    def self.all
      @@selection #allows apartments to be called in CLI
    end

end
