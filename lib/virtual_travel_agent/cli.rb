class VirtualTravelAgent::CLI
  def call
      greeting
      list
      menu
      goodbye
  end

  def greeting
    puts ""
    puts "Having a tough time deciding where to go on vacation?"
    puts "Well let us help guide your thinking with this Virtual Travel Agent gem!"
    puts ""
  end

  def list
    puts "Here is a list of the top 10 can't miss destiantions:"
    country = VirtualTravelAgent::Country.all
    country.each do |trips|
      puts "#{trips.name}"
    end 
  end

  def menu
    input = nil
    while input != 'exit'
    puts "Please choose from the following menu:"
    puts "If you see a country you are interested in type in it's number"
    puts "If you would like to see a list of the countries again, type 'list'"
    puts "If you would like to exit, simply type 'exit'"

    input = gets.strip

    if input == 'list'
      list
    elsif input == (1..10)
      puts "Here is a basic description"
    else
      puts "please enter a number 1 - 10, or type 'list' to see the list again or 'exit' to exit."
    end
    end

  end

  def goodbye
    puts "See Ya later"
  end



end
