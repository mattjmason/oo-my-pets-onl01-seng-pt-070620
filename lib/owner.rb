class Owner
  attr_accessor :cats, :dogs 
  attr_reader :species, :name  
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self 
    @cats = []
    @dogs = []
  end 
  
  def self.all 
    @@all 
  end 
  
  def cats 
    Cat.all.select{|cat| cat.owner == self}
  end
  
   def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def say_species 
    "I am a #{self.species}."
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end 
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walks_dogs
    Owner.dogs.each {|dog| dog.mood = "happy"}
  end 
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all 
    @@all.clear
   end 
  
  
end