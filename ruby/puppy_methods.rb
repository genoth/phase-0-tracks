# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(number)
#     number.times do
#      p "woof"
#     end
#   end

#   def roll_over()
#     p "*Rolls Over*"
#   end

#   def age_in_dog_years(human_years)
#    p human_years * 7
#   end

#   def wag_tail()
#     p "*Wags Tail*"
#   end

#   def initialize()
#     p "Initializing new puppy instance."
#   end

# end

# fido = Puppy.new
# fido.fetch("ball")
# fido.speak(5)
# fido.roll_over
# if fido.age_in_dog_years(15) == 105
#  p true
# end
# fido.wag_tail()

class Kittens
  def initialize(name)
    @name = name
    p "Initializing new kitten instance"
  end

  def meow(num)
    num.times do
      p "#{@name} says Meow!"
    end
  end

  def jump
    p "#{@name} jumps all over the place!"
  end
end

# while Kitten instances is less than 50 create a new instance of Kitten starting with Kitten1 and going up.

Don = Kittens.new("Don")
Don.meow(3)
Don.jump

def name_generator(name, number)
  i = 1
  name_array = []
  while i < number + 1
    kitten_name = name + i.to_s
    i = i + 1
    name_array << kitten_name
  end
  return name_array
end
kitten_names = name_generator("kitty", 50)

kitten_collection = []

puts "Iterating through names list to create kittens"
kitten_names.each do |name|
  puts "Creating a kitten named #{name} ..."
  kitten_collection << Kittens.new(name)
  puts "There are now #{kitten_collection.length} kitten instances in the array"
  puts "----"
end

kitten_collection.each do |kitten|
  p "#{kitten} is the best kitty ever!"
end



