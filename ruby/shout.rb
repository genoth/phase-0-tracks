# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + " wooooo!!"
#   end
# end

# # Driver Code
# puts Shout.yell_angrily("Nooooooooo")
# puts Shout.yelling_happily("Yes I did it yaaay")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    words + " wooooo!!"
  end
end

class Regular_person
  include Shout
end

class Band
  include Shout
end

# DRIVER CODE

Otis_Day_and_the_Knights = Band.new
Teacher = Regular_person.new

puts Teacher.yell_angrily("Detention")
puts Teacher.yell_happily("Great job on the test")

puts Otis_Day_and_the_Knights.yell_happily("You know you make me wanna shout")
puts Otis_Day_and_the_Knights.yell_angrily("This song requires participation")
