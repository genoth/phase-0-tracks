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

  def meow(num, name)
    num.times do
      p "#{name} says Meow!"
    end
  end
end

# while Kitten instances is less than 50 create a new instance of Kitten starting with Kitten1 and going up.

kitten = Kittens.new("Don Draper")

def name_generator(name, number)
  i = 0
  name_array = []
  while i < number + 1
    kitten_name = name + i.to_s
    i = i + 1
    name_array << kitten_name
  end
  return name_array
end

def create_kittens(name, number)
  kittens_created = 0
  kitten_array = []
  until kittens_created == number
    kitten = Kittens.new((name_generator(name, number)[kittens_created + 1]))
    kitten_array << kitten
    kittens_created = kittens_created + 1
  end
  return kitten_array
end

p create_kittens("kitty", 10)

