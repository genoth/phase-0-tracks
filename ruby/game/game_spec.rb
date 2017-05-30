require_relative 'game'

# our game should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

require_relative 'calculator'

describe WordGame do
  let(:game) { Game.new }

  it "adds two integers" do
    expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(calculator.multiply(2,3)).to eq 6
  end

  it "divides two integers" do
    expect(calculator.divide(20,5)).to eq 4
  end

  it "divides two integers" do
    expect(calculator.divide(20,5)).to be_a_kind_of(Integer)
  end
end