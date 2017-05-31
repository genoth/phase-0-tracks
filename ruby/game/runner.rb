require_relative 'game'
puts "Welcome to the word guessing game! This game requires 2 players. Player 1 - please enter a secret word for Player 2 to guess."
game = WordGame.new(gets.chomp)
p game.guesses_allowed
puts "#{game.secret_word} is the secret word."
puts "#{game.secret_letter_array} is the letter array."
p game
puts "It's time for Player 2!"
p game.guess_count

puts "Welcome to the word game! You have #{game.guesses_allowed} tries to guess the secret word."
p game
puts "The secret letter array is #{game.secret_letter_array}."


until game.game_won? || game.out_of_guesses?
  puts "Please guess a letter."
  user_guess = gets.chomp
  game.guess_array << user_guess
  puts "#{game.guess_array} helllooooo!!!!"
  game.guess_array = game.guess_array.uniq
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
      game.masked_array.delete_at(integer)
      game.masked_array.insert(integer, user_guess)
    end
    puts game.masked_array.join(" ")
  else puts "Wrong!"
  end
end
if game.out_of_guesses?
  puts "You ran out of guesses! You suck!"
elsif game.game_won?
  puts "You win!"
end

# until masked_array == secret_letter_array
#   puts "Please guess a letter."
#   user_guess = gets.chomp
#   secret_letter_array.each_with_index do |letter, index|
#     if letter == user_guess
#       location = secret_letter_array.index(letter)
#       masked_array.delete_at(location)
#       masked_array.insert(location, letter)
#       puts "Good job!"
#       puts masked_array.join(" ")
#     else puts "Sorry, #{user_guess} is not part of the secret word. Please try again. #{masked_array.join(" ")}"
#     end
#   end
# end









