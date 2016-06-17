require 'pry'
require 'nokogiri'
require 'open-uri'

class Scraper
  def get_page
    Nokogiri::HTML(open("http://www.metmuseum.org/exhibitions/current-exhibitions"))
  end
  
  def scrape_index_page
    page =get_page.css("div.grid-listing__item")
    binding.pry
  end
  
  #First, iterate through the #scrape_index_page method
  #link: card.css("a.card--exhibit").attr("href").value  PLAY AROUND WITH THIS IN PRY
  #title and subtitle: card.css("h2.card__title").text
  #date: card.css(".card__meta strong")
end

Scraper.new.scrape_index_page
