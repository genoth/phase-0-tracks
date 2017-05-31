require_relative 'game'

puts "Welcome to the word guessing game! This game requires 2 players. Player 1 - please enter a secret word for Player 2 to guess."
game = WordGame.new(gets.chomp)
puts "It's time for Player 2!"

puts "Welcome to the word game! You have #{game.guesses_allowed} tries to guess the secret word."

until game.game_won? || game.out_of_guesses?
  puts "Please guess a letter."
  user_guess = gets.chomp
  if game.guess(user_guess)
    puts "Good job!"
    puts "Here are your guesses: #{game.guess_array}"
    puts game.masked_array.join(" ")
  else puts "Wrong!"
    puts "Here are your guesses: #{game.guess_array}"
  end
end
if game.out_of_guesses?
  puts "You ran out of guesses! You suck!"
elsif game.game_won?
  puts "You win!"
end