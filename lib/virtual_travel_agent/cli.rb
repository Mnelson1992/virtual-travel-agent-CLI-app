class VirtualTravelAgent::CLI
  def call
      greeting
      list
      menu
      goodbye
  end

  def greeting
    puts "Hello"
  end

  def list
    puts "Here is a list of the top 10 can't miss destiantions:"
  end

  def menu
    puts "Please choose from the following menu"
  end

  def goodbye
    puts "See Ya later"
  end 



end
