

1. Are there any handy RSpec cheat sheets out there? What observations can you make from skimming them?

2. Where is the RSpec documentation?
  * http://rspec.info/documentation/
  * https://relishapp.com/rspec/

3. What other RSpec matchers are available aside from eq?
  * Full list at https://relishapp.com/rspec/rspec-expectations/v/3-6/docs/built-in-matchers/type-matchers
  * Type matchers
    it "divides two integers" do
      expect(calculator.divide(20,5)).to be_a_kind_of(Integer)
    end
  *
4. Can you find any free RSpec tutorials or in-depth resources that might be helpful to bookmark?