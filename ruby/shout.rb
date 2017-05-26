module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "wooooo!!"
  end
end

# Driver Code
puts Shout.yell_angrily("Nooooooooo")
puts Shout.yelling_happily("Yes I did it ")