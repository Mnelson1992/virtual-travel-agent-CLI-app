class VirtualTravelAgent::Scraper


  def self.scraped_info
    doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/countries"))
    #binding.pry


  end



end
