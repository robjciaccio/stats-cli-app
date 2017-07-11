

class Listing
attr_accessor :max_price, :zip_code, :bedrooms

  def initialize(max_price = "2500", zip_code = "11215", bedrooms = "1")
    @max_price = max_price
    @zip_code = zip_code
    @bedrooms = bedrooms
    html = "https://newyork.craigslist.org/search/aap?postal=#{zip_code}&max_price=#{max_price}&min_bedrooms=#{bedrooms}&availabilityMode=0"
    binding.pry
  html
  end

end
