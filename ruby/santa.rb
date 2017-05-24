class Santa

  def initialize(name, gender, ethnicity)
    #initialize method runs any time we call .new on the reindeer class!
    @name = name
    @gender = gender
    @ethnicity = ethnicity
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

  def excited_for_santacon
    puts "#{@name} is excited for Santacon!"
  end

  # GETTER methods - make the data readable outside the class
  def name
    @name
  end

  def gender
    @gender
  end

  def ethnicity
    @ethnicity
  end

  def age
    @age
  end

  # SETTER methods - make the data writable outside the class
  def name=(new_name)
    @name = new_name
  end

  def celebrate_birthday
    @age = @age + 1
  end

end

# DRIVER CODE
mall_santa = Santa.new("Marge", "prefer not to say", "prefer not to say")
mall_santa.speak
mall_santa.eat_milk_and_cookies("sugar cookie")

# santas = []
# santas << Santa.new("Anna", "agender", "black")
# santas << Santa.new("Bella", "female", "Latina")
# santas << Santa.new("Charlie", "bigender", "white")
# santas << Santa.new("Dennis", "male", "Japanese")
# santas << Santa.new("Emily", "female", "prefer not to say")
# santas << Santa.new("Fareed", "gender fluid", "Mystical Creature")
# santas << Santa.new("Genevieve", "N/A", "N/A")

santas = []
example_names = ["Anna", "Bella", "Charlie", "Dennis", "Emily", "Fareed", "Genevieve"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latina", "white", "Japanese", "prefer not to say", "Mystical Creature", "N/A"]

i = 0
7.times do
  santas << Santa.new(example_names[i], example_genders[i], example_ethnicities[i])
  i = i + 1
end

# Iterate through santas
santas.each do |santa|
  santa.excited_for_santacon
end

# Use SETTER method
santas[0].name = "The Santa formerly known as Anna"

# Iterate through santas again
santas.each do |santa|
  santa.excited_for_santacon
end

#


# NOTES
# Attributes only exist INSIDE the class
# Only methods declared inside the class can access attributes!!!
# Provide an interface between the class and the program outside the class to make that data available to the outside world
# GETTER methods wrap around a piece of data, and return that data
    # ex.
    # def name
    #   @ name
    # end
# SETTER methods allow you to set new values for an attribute from outside the class, i.e. make it writable from outside the class
    # ex.
    # def name=(new_name)
    #   @name = new_name
    # end



