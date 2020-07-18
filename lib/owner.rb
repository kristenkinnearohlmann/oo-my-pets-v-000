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
    # @cats.push(cat) unless @cats.include?(cat)
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
