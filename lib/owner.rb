class Owner
  attr_accessor
  attr_reader :species, :name  
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def say_species 
    "I am a #{self.species}."
  end 
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all 
    @@all.clear
   end 
  
  
end