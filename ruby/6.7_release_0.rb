# What behaviors does the game have?
# initialize, shuffle, check_cup
# What state does the game have?
# whether the cup is empty or contains the ball
# Observe how the driver code acts as a bridge between the class and the user. Are there times when user input cannot be passed directly to the class, and instead must be adjusted from "human logic" to "computer logic"?
# Yes - guessing Cup 1, 2, or 3 is turned into computer logic by using the index of the array of cups.
# What would you have to change if you wanted to limit how many guesses the user gets?
# I think you would need to make an attribute accessor for guess_count, and then modify the conditional statement in the instance variable to allow a maximum number for guess_count.

# game class

class CupGame
  attr_accessor :guess_count
  attr_reader :is_over

  def initialize
    @cups = ["ball", "empty", "empty"]
    @guess_count = 0
    @is_over = false
  end

  def shuffle
    @cups.shuffle!
  end

  def check_cup(index)
    @guess_count += 1
    if @cups[index] == "ball"
      @is_over = true
      if @guess_count == 2
        @is_over = true
      else
        false
      end
    end
  end

# user interface

puts "Welcome to the Cup Game!"
game = CupGame.new

puts "Shuffling cups ..."
game.shuffle

while !game.is_over
  puts "Which cup has the ball? Enter a guess of 1, 2, or 3:"
  guess = gets.chomp.to_i
  if !game.check_cup(guess - 1)
    puts "Nope! Try again."
  else puts "You won in #{game.guess_count} guesses!"
  end
end
while game.is_over
  if !game.check_cup(guess - 1) && game.guess_count == 2
    puts "Sorry, you lost! Game over!"
  end
end
end

