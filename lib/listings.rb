
require "pry"


class Listing
attr_accessor :max_price, :zip_code, :bedrooms, :new_html, :name

  def initialize(name)
    @name = name
  end

  def get_html(max_price, zip_code, bedrooms)
    @new_html = "https://newyork.craigslist.org/search/aap?postal=" + "#{zip_code}" + "&max_price=" + "#{max_price}" + "&min_bedrooms=" + "#{bedrooms}" + "&availabilityMode=0"
    @new_html
  end

  def get_info
    puts "Welcome to your apartment search!\n"
    puts "Please enter the zip code you would like to search in: "
    @zip_code = gets.chomp
    puts "Please enter your max price range: "
    @max_price = gets.chomp
    puts "Please enter the minimum amount of bedrooms: "
    @bedrooms = gets.chomp
  end

  def self.reset_all
    @zip_code = ""
    @max_price = ""
    @bedrooms = ""
  end

end
