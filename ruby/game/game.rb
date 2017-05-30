# Create a class called WordGame.
# Define method to initialize the game. Initialize method should:
  # Set a variable secret_word to be a word, possibly randomly generated.
  # Set the default state of the variable game_is_over to be false.
  # Set the guesses_allowed variable to be the length of the secret word.
# Define a method that establishes the maximum number of guesses allowed, based on the secret_word length.
# Define a method to compare the user guess to the secret word, and change the state to game_is_over if they match and show a message that they won. Or, if they don't match, but the user has used the maximum allotted guesses, change the state to game_is_over and show a message that they lose.

class WordGame
  attr_accessor :secret_word, :guess_count, :guess_array, :secret_letter_array, :game_is_over
  def initialize
    @secret_word = ""
    @secret_letter_array = []
    @guesses_allowed = ""
    @guess_count = ""
    @guess_array = []
    @game_is_over = false
  end

  def allowed_guesses
    @guesses_allowed = @secret_word.length
  end

  def secret_letter_array
    @secret_letter_array = @secret_word.chars
  end
end

game = WordGame.new
puts "Welcome to the word guessing game! This game requires 2 players. Player 1 - please enter a secret word for Player 2 to guess."
game.secret_word = gets.chomp
p game.allowed_guesses
puts "#{game.secret_word} is the secret word."
puts "#{game.secret_letter_array} is the letter array."
p game
puts "It's time for Player 2!"
p game.guess_count

puts "Welcome to the word game! You have #{game.allowed_guesses} tries to guess the secret word."
p game

def multiply(x,y)
  x * y
end
multiplier = game.secret_letter_array.length
symbol = "_ "
hidden_string = multiply(symbol, multiplier)
puts hidden_string
hidden_array = hidden_string.split

until hidden_array == game.secret_letter_array
  if game.guess_count == game.allowed_guesses
    puts "You ran out of guesses!"
  elsif hidden_array == game.secret_letter_array
    puts "You win!"
  else
    puts "Please guess a letter."
    user_guess = gets.chomp
    game.guess_array << user_guess.chars
    game.guess_array = game.guess_array.uniq!
    p game.guess_array
    if game.secret_letter_array.include?(user_guess)
      puts "Good job!"
      matching_letter_locations = []
      game.secret_letter_array.each_index do |index|
        if game.secret_letter_array[index] == user_guess
          matching_letter_locations << index
        end
      end
      matching_letter_locations.each do |integer|
        hidden_array.delete_at(integer)
        hidden_array.insert(integer, user_guess)
      end
      puts hidden_array.join(" ")
    else puts "Please try again."
    end
  end
end

# until hidden_array == secret_letter_array
#   puts "Please guess a letter."
#   user_guess = gets.chomp
#   secret_letter_array.each_with_index do |letter, index|
#     if letter == user_guess
#       location = secret_letter_array.index(letter)
#       hidden_array.delete_at(location)
#       hidden_array.insert(location, letter)
#       puts "Good job!"
#       puts hidden_array.join(" ")
#     else puts "Sorry, #{user_guess} is not part of the secret word. Please try again. #{hidden_array.join(" ")}"
#     end
#   end
# end









