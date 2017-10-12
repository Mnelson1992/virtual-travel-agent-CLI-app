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
    #Add iteration to this method to display countries
  end

  def menu
    input = nil
    while input !=nil
    puts "Please choose from the following menu:"
    puts "If you see a country you are interested in type in it's number"
    puts "If you would like to see a list of the countries again, type 'list'"
    puts "If you would like to exit, simply type 'exit'"
    end

  end

  def goodbye
    puts "See Ya later"
  end



end
