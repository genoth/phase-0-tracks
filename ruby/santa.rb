class Santa
  attr_reader :ethnicity
  attr_accessor :name, :gender, :reindeer_preference, :age

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

  # # GETTER methods - make the data readable outside the class
  # def name
  #   @name
  # end

  # def gender
  #   @gender
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def age
  #   @age
  # end

  # # SETTER methods - make the data writable outside the class
  # def changed_name=(new_name)
  #   @name = new_name
  # end

  def celebrate_birthday()
    @age = @age + 1
    puts "#{@name} is now #{@age}!"
  end

  def get_mad_at(reindeer)
    @reindeer_preference.delete(reindeer)
    @reindeer_preference.insert(-1, reindeer)
  end

  # def update_gender(updated_gender)
  #   @gender = updated_gender
  # end
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
santas[0].celebrate_birthday
p santas[0].age
santas[0].get_mad_at("Dasher")
santas[0].gender = "transgender"

# Iterate through santas again
santas.each do |santa|
  santa.excited_for_santacon
end

#
p santas



