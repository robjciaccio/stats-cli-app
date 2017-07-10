require 'nokogiri'
require 'pry'
require 'open-uri'

class Scraper
  attr_accessor :name
  html = open('http://www.nfl.com/stats/categorystats?tabSeq=0&statisticCategory=PASSING&conference=null&season=2016&seasonType=REG&d-447263-s=PASSING_YARDS&d-447263-o=2&d-447263-n=1')
  Nokogiri::HTML
  doc = Nokogiri::HTML(html)
  quarterbacks = doc.css("div.grid .odd").children.css("a").map do |i|
    i.attribute('href').value
  end
  joined = quarterbacks.join
  sep = joined.split("/")
  puts "Please enter the quarterbacks name"
  binding.pry
  name = gets.chomp
  if sep.include?(name)
    name
  else
    "Please enter a different name"
  end


end
