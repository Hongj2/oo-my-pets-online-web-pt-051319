class Owner
 attr_accessor :pets, :name 
 attr_reader :species
 @@all = []
 def initialize (species)
   @species = species
   @@all << self
   @pets = {fishes: [], cats: [], dogs: []}
   
 end
 
 def self.all 
   @@all 
 end
 def self.count
   @@all.size
 end
 def self.reset_all
   @@all.clear
 end
 
 def say_species 
   "I am a #{species}."
 end
 
 def buy_cat(name)
   pets[:cats] << Cat.new(name)
   
 end
   def play_with_cats 
      pets[:cats].map {|cat| cat.mood = "happy"}
    end
  def buy_dog(name)
       pets[:dogs] << Dog.new(name)
 end

    def walk_dogs 
      pets[:dogs].map {|dog| dog.mood = "happy"}
    end
 
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
 end
     def feed_fish
      pets[:fishes].map {|fish| fish.mood = "happy"}
    end
    
    def sell_pets
      pets.each do |species, animals|
		 animals.each do |animal|
		 	animal.mood = "nervous"
		 end
		 animals.clear
		end 
    end
    
    def list_pets
       "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
    end
end