# Create a class called WordGame.
# Define method to initialize the game. Initialize method should:
  # Set a variable secret_word to be a word, possibly randomly generated.
  # Set the default state of the variable game_is_over to be false.
  # Set the guesses_allowed variable to be the length of the secret word.
# Define a method that establishes the maximum number of guesses allowed, based on the secret_word length.
# Define a method to compare the user guess to the secret word, and change the state to game_is_over if they match and show a message that they won. Or, if they don't match, but the user has used the maximum allotted guesses, change the state to game_is_over and show a message that they lose.

class WordGame
  attr_accessor :secret_word, :word_array, :guess_count, :guesses_allowed

  def initialize
    @secret_word = ""
    @guess_count = 0
    @game_is_over = false
    @guesses_allowed = (@secret_word).length
    @user_input = ""
  end

  def check_word(user_input)
    if user_input == @secret_word
      @game_is_over = true
      puts "You win!"
    elsif user_input != @secret_word && @guess_count > @secret_word.length
      @game_is_over = true
      puts "You ran out of guesses!"
    else puts "Try again!"
    end
  end
end

game = WordGame.new
word_array = ["fantasy", "unicorn", "mythical", "story", "dragon"]
@secret_word = word_array[rand(4)]
secret_word = @secret_word
secret_letter_array = secret_word.chars
def multiply(x,y)
  x * y
end


puts "#{secret_word} is the secret word."
puts "#{secret_letter_array} is the letter array."
puts "Welcome to the word game! You have #{@guesses_allowed} to guess the word."

# method to create - - - - for secret word
multiplier = secret_letter_array.length
symbol = "_ "
hidden_string = multiply(symbol, multiplier)
puts hidden_string
hidden_array = hidden_string.split

until hidden_array == secret_letter_array
  puts "Please guess a letter."
  user_guess = gets.chomp
  secret_letter_array.each_with_index do |letter, index|
    if letter == user_guess
      location = secret_letter_array.index(letter)
      hidden_array.delete_at(location)
      hidden_array.insert(location, letter)
      puts "Good job!"
      puts hidden_array.join(" ")
    end
  end
end

until hidden_array == secret_letter_array
  puts "Please guess a letter."
  user_guess = gets.chomp
  secret_letter_array.each_with_index do |letter, index|
    if letter == user_guess
      location = secret_letter_array.index(letter)
      hidden_array.delete_at(location)
      hidden_array.insert(location, letter)
      puts "Good job!"
      puts hidden_array.join(" ")
    else puts "Sorry, #{user_guess} is not part of the secret word. Please try again. #{hidden_array.join(" ")}"
    end
  end
end


# if user_guess == secret_letter_array[i]
#   secret_letter_array[i] = user_guess
#   i = i + 1
#   p secret_letter_array[i]
# end


# if secret_letter_array.include?(user_guess)
#   secret_letter_array.each do |letter|
#     p letter
#   end
# end
# p secret_letter_array

# # i = 0







