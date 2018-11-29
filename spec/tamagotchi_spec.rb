require 'rspec'
require 'pry'
require 'tamagotchi'

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food()).to(eq(10))
      expect(my_pet.activity()).to(eq(0))
      expect(my_pet.energy()).to(eq(10))
    end
  end

  describe("#fun") do
    it("increase activity level") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.fun()).to(eq("fun"))
      expect(my_pet.activity()).to(eq(10))
      expect(my_pet.energy()).to(eq(5))
    end
  end

  describe("#feed") do
    it("increase activity level") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.feed()).to(eq("nom!"))
      expect(my_pet.food()).to(eq(25))
      expect(my_pet.energy()).to(eq(25))
    end
  end
end
