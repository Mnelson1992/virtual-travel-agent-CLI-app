class VirtualTravelAgent::Scraper
  attr_accessor :name, :description


  def self.scraped_info
    doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/countries"))
    #binding.pry
    doc.css(".marketing-article").each do |destination|
      name = destination.css("h1").text
      description = destination.css("p").first.text.strip
      VirtualTravelAgent::Country.new(name, description)
    end
  end



end
