require 'Nokogiri'
require 'pry'
require "./lib/listings.rb"
require "./lib/apartmentsearch.rb"



def run
  Apartment.get_info
  current = Listing.new(Apartment.max_price, Apartment.zip_code, Apartment.bedrooms)
  end

#get_info
  #run get info method

#html method
  #apply zip/rooms/price to html

#selection
  #return site of selected post

#clear_search
  #clear all including html

#create_new_search
  #
