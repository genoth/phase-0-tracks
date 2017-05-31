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
  it "works" do
    WordGame.new("foobar")
  end
end