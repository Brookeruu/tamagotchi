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
    it("increase activity level but lower energy") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.fun()).to(eq("fun"))
      expect(my_pet.activity()).to(eq(10))
      expect(my_pet.energy()).to(eq(5))
    end
  end

  describe("#feed") do
    it("increase food and energy leves") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.feed()).to(eq("nom!"))
      expect(my_pet.food()).to(eq(25))
      expect(my_pet.energy()).to(eq(25))
    end
  end

    describe("#rest") do
      it("increase rest level but lower food and activity") do
        my_pet = Tamagotchi.new("lil dragon")
        expect(my_pet.rest()).to(eq("yawn!"))
        expect(my_pet.food()).to(eq(5))
        expect(my_pet.energy()).to(eq(25))
        expect(my_pet.activity()).to(eq(-5))
      end
    end
end
