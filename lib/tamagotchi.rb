class Tamagotchi
  @@keychain = []
  attr_accessor :food, :activity, :sleep

  def initialize(name)
    @@name = name
    @@food = 10
    @@activity = 0
    @@energy = 10

  end

  def save
    @@keychain.push(self)
  end

  def name
    @@name
  end

  def food
    @@food
  end

  def energy
  @@energy
  end

  def activity
    @@activity
  end

  def fun
    @@activity += 10
    @@energy -= 5
    @@food -= 5
    return "fun"
    #increase activity, decrease food, decrease energy
  end

  def feed
  end


end
