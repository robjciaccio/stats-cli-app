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
      counter = 0
      i = 0
      while counter < 25
        puts "#{counter+=1}. #{price[i]} #{listing[i]}"
        i+=1
      end
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
