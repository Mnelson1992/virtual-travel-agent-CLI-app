class VirtualTravelAgent::Country
  attr_accessor :name, :description

  @@all = []

  def initialize(name, description)
    @name = name
    @description = description
  end

  def self.all
    @@all
  end 


end
