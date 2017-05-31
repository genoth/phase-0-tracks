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


end