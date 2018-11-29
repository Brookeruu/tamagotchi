class Tamagotchi
  @@keychain = []
  attr_accessor :food, :activity, :sleep

  def initialize(name)
    @name = name
    @food = 10
    @activity = 0
    @sleepy = 10
  end

  def save
    @@keychain.push(self)
  end

  def name
    @name
  end

  def food
    @food
  end

  def sleepy
  @sleepy
  end

  def activity
    @activity
  end

  def play

  end


end
