class Santa

  def initialize(name, gender)
    @name = name
    @gender = gender
    @reindeer_preference = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end
  def speak
    puts "Ho, ho, ho! Haaaaapy holidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
end

# DRIVER CODE
mall_santa = Santa.new("prefer not to say", "prefer not to say")
mall_santa.speak
mall_santa.eat_milk_and_cookies("sugar cookie")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")

