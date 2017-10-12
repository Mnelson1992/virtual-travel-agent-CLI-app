class VirtualTravelAgent::CLI
  def call
      greeting
      VirtualTravelAgent::Scraper.scraped_info
      list
      menu
      goodbye
  end

  def greeting
    puts ""
    puts "Having a tough time deciding where to go on vacation?"
    puts "Well let us help guide your thinking with this Virtual Travel Agent Gem!"
    puts ""
  end

  def list
    puts "Here is a list of the top 10 can't miss destinations:"
    country = VirtualTravelAgent::Country.all
    country.each do |trips|
      puts "#{trips.name}"
    end
  end

  def menu
    input = nil
    while input != 'exit'
    puts "Please choose from the following menu:"
    puts "If you see a country you are interested in, type in it's number"
    puts "If you would like to see the list of the countries again, type 'list'"
    puts "If you would like to exit, simply type 'exit'"

    input = gets.strip

    if input == 'list'
      list
    elsif input.to_i > 0
      location = input.to_i-1
      country = VirtualTravelAgent::Country.all
      puts country[location].description
    else
      puts "please enter a number 1 - 10, or type 'list' to see the list or 'exit' to exit."
    end
    end

  end

  def goodbye
    puts "If you need anymore inspiration for a trip, come back!"
  end



end
