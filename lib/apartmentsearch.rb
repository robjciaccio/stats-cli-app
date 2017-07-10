class Apartment

  attr_accessor :max_price :zip_code :bedrooms

  def initialize(max_price, zip_code, bedrooms)
    @max_price = max_price
    @zip_code = zip_code
    @bedrooms = bedrooms
  end


end
