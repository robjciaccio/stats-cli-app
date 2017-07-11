

class Listing
attr_accessor :max_price, :zip_code, :bedrooms

  def initialize(max_price = "2500", zip_code = "11215", bedrooms = "1")
    @max_price = max_price
    @zip_code = zip_code
    @bedrooms = bedrooms
  end

  def self.get_html
    new_html = "https://newyork.craigslist.org/search/aap?postal=#{@zip_code}&max_price=#{@max_price}&min_bedrooms=#{@bedrooms}&availabilityMode=0"
    new_html
  end

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
