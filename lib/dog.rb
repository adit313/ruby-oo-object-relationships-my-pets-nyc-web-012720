class Dog
  # code goes here

  @@all = []

  def initialize(name, owner)
  	@name = name
  	@owner= owner
  	@mood = 'nervous'
  	@@all << self
  end

  def name
  	return @name
  end

  def owner
  	return @owner
  end

  def owner=(owner)
  	@owner = owner
  end

  def mood
  	@mood
  end

  def mood=(new_mood)
  	@mood = new_mood
  end

  def self.all
  	return @@all
  end

  def walk
  	@mood = 'happy'
  end

  def sell
  	@owner = nil
  	@mood = 'nervous'
  end

end