class Owner
  # code goes here

  @@all = []

  def initialize(name = nil)
  	@name = name
  	@species = 'human'
  	@@all << self
  end

  def species
  	return @species
  end

  def say_species
  	return ("I am a human.")
  end

  def name
  	@name
  end

  def self.all
  	return @@all
  end

  def self.count
  	return @@all.length
  end

  def self.reset_all
  	@@all.clear
  end

  def cats
  	Cat.all.select { |e| e.owner == self }
  end

  def dogs
  	Dog.all.select { |e| e.owner == self }
  end

  def buy_cat(name)
  	Cat.new(name, self)
  end

  def buy_dog(name)
  	Dog.new(name, self)
  end

  def walk_dogs
  	self.dogs.each{|e| e.walk() }
  end

  def feed_cats
  	self.cats.each{|e| e.feed() }
  end

  def sell_pets
  	self.dogs.each{|e| e.sell() }
  	self.cats.each{|e| e.sell() }
  end

  def list_pets
   return "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
  end




end