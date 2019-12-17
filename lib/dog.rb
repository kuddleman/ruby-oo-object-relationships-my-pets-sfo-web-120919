class Dog

  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name, owner) #owner is an instance of the Owner class
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  




end