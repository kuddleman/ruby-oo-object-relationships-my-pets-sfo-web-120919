# Join class


class Owner

  

  @@all = []
  
  def initialize(name)
    @species = species
    @name = name
    @@all << self

  end
  
  def name
    @name
  end

  def species
    @species = "human"
  end
  
  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    #get an array of the cats he owns
    Cat.all.select do |kitty|
      kitty.owner == self
    end
  end

  def dogs
    Dog.all.select {|doggie| doggie.owner == self}
  end

  def buy_cat(new_kitty_name)
    Cat.new(new_kitty_name, self)
  end

  def buy_dog(new_doggie_name)
    Dog.new(new_doggie_name, self)
  end

  def walk_dogs
    Dog.all.each do |doggie|
      doggie.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.each do |kitty|
      kitty.mood = "happy"
    end
  end

  def sell_pets
    Cat.all.each {|kitty| kitty.mood = "nervous"}
    Dog.all.each {|doggie| doggie.mood = "nervous"}
    Cat.all.each {|kitty| kitty.owner = nil}
    Dog.all.each {|doggie| doggie.owner = nil}
  end

  def list_pets
    # doggie_count = self.dogs.count
    # kitty_count = self.cats.count
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."

  end


end