require_relative 'game'

# our game should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>


describe WordGame do
  it "sets secret word on initialize" do
    game = WordGame.new("foobar")
    expect(game.secret_word).to eq("foobar")
  end

  it "has a secret_letter_array" do
    game = WordGame.new("foobar")
    expect(game.secret_letter_array).to eq(["f", "o", "o", "b", "a", "r"])
  end

  it "assigns a maximum amount of guesses" do
    game = WordGame.new("foobar")
    expect(game.guesses_allowed).to eq(game.secret_word.length)
  end

  it "creates a masked array" do
    game = WordGame.new("foobar")
    expect(game.masked_array).to eq(["_", "_", "_", "_", "_", "_"])
  end

  it "determines if the game is won" do
    game = WordGame.new("foobar")
    expect(game.game_won?).to eq(false)
  end

  it "takes a letter as a guess and checks whether it exists in the secret word" do
    game = WordGame.new("foobar")
    user_guess = "f"
    expect(game.guess(user_guess)).to eq(true)
  end

# checking an intermediate state
  it "changes the masked array" do
    game = WordGame.new("foobar")
    game.guess("f")
    expect(game.masked_array).to eq(["f", "_", "_", "_", "_", "_"])
    expect(game.guess_array).to eq(["f"])
  end

# pretending to be the user console, walking you through the happy path of the game.
  it "can win" do
    game = WordGame.new("foobar")
    game.guess("f")
    game.guess("o")
    game.guess("b")
    game.guess("a")
    game.guess("r")
    expect(game.game_won?).to eq(true)
  end


end