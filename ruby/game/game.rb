# Create a class called WordGame.
# Define method to initialize the game. Initialize method should:
  # Set a variable secret_word to be a word, possibly randomly generated.
  # Set the default state of the variable game_is_over to be false.
  # Set the guesses_allowed variable to be the length of the secret word.
# Define a method that establishes the maximum number of guesses allowed, based on the secret_word length.
# Define a method to compare the user guess to the secret word, and change the state to game_is_over if they match and show a message that they won. Or, if they don't match, but the user has used the maximum allotted guesses, change the state to game_is_over and show a message that they lose.

class WordGame
  attr_accessor :secret_word, :guess_array, :game_is_over, :masked_array

  def initialize(secret_word)
    @secret_word = secret_word
    @guess_array = []
    @game_is_over = false
    @masked_array = ("_ " * @secret_word.length).split(" ")
  end

  def guesses_allowed
    @secret_word.length
  end

  def secret_letter_array
    @secret_word.chars
  end

  def guess_count
    @guess_array.length
  end

  def out_of_guesses?
    guesses_allowed == guess_count
  end

  def game_won?
    secret_letter_array == @masked_array
  end

  def guess(user_guess)
    if @secret_word.include?(user_guess)
      matching_letter_locations = []
      secret_letter_array.each_index do |index|
        if secret_letter_array[index] == user_guess
          matching_letter_locations << index
        end
      end
      matching_letter_locations.each do |integer|
        @masked_array.delete_at(integer)
        @masked_array.insert(integer, user_guess)
      end
    end
    @guess_array << user_guess
    @guess_array = @guess_array.uniq

    @secret_word.include?(user_guess)
  end
end
