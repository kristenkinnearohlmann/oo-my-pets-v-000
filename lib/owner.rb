require 'pry'

class Owner

  attr_accessor :cats, :dogs
  attr_reader :name, :species

  @@owners = []

# instance methods

  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
    @cats = []
    @dogs = []
  end

  def say_species()
    "I am a #{species}."
  end

  def cats()
    @cats
  end

  def dogs()
    @dogs
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat,self)
    @cats.push(new_cat) unless @cats.include?(new_cat)
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog,self)
    @dogs.push(new_dog) unless @dogs.include?(new_dog)
  end

#class methods

  def self.all()
    @@owners
  end

  def self.count()
    @@owners.count
  end

  def self.reset_all()
    @@owners = []
  end

end
