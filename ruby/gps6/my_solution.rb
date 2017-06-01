# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows you to access and use data from another file located in the same directory (often used for rspec, css stylesheets, etc.)
# using require, you need an absolute path

require_relative 'state_data'


class VirusPredictor

# Initialize method sets the default state of new instances of the class and its instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# .floor is a built in method that returns the largets integer less than or equal to a float (decimal value), i.e. it rounds down to the nearest whole number
# predicted_deaths method takes population_density, population, and state as arguments & then calculates the number of deaths (with number of deaths being higher in more dense areas)
# then prints a human readable statement that indicates how many deaths might occur in a given state

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# takes population_density and state as arguments, and calculates the speed, how fast the outbreak will spread
# prints a human readable statement of how fast the outbreak will spread across a given state

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_info|
#   test_state = VirusPredictor.new(state, STATE_DATA[:state][:population_density], STATE_DATA[:state][:population])
# test_state.virus_effects
test_state = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
test_state.virus_effects
end

# virus_effects checks the impact on an individual, and if you put the virus_predictor inside the class you would muddy the waters between group and individual

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section