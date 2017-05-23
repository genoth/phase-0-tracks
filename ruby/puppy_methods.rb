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
  def initialize
    p "Initializing new kitten instance"
  end

  def meow(num)
    num.times do
      p "Meow!"
    end
  end
end

don = Kittens.new

don.meow(5)

p don.class




# while Kitten instances is less than 50 create a new instance of Kitten starting with Kitten1 and going up.

def create_kitten(name, number)
  kitten_hash = {}
  namenumber = Kittens.new
  kitten_hash[namenumber].push
end

kittens_created = 1
while kittens_created < 10
  create_kitten("kitty", kittens_created.to_s)
  kittens_created = kittens_created + 1
end

kitten_hash.map do |kitten|
  kitten.meow(3)
  puts "#{kitten} is noisy!"
end

puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!"



# def new_kitten_names(name)
#   puts name + 1.to_s
# end

# p new_kitten_names("harold")

