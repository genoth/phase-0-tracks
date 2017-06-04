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

# If you move private above virus_effects, it makes the method virus_effects private. Then you get an error when calling the Virus_Predictor method. It seems that you can only call private methods on themselves, not on other objects.

# Private methods cannot be called with an explicit receiver - the receiver is always self. This means that private methods can be called only in the context of the current object; you cannot invoke another object's private methods.

# I think you would want to use a private method if you want to restrict or control access to an object.

# .floor is a built in method that returns the largest integer less than or equal to a float (decimal value), i.e. it rounds down to the nearest whole number
# predicted_deaths method takes population_density, population, and state as arguments & then calculates the number of deaths (with number of deaths being higher in more dense areas)
# then prints a human readable statement that indicates how many deaths might occur in a given state

  # def predicted_deaths
  #   # predicted deaths is solely based on population density
  #   if @population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   elseif @population_density >=
  #     number_of_deaths = (@population * 0.05).floor
  #   end
  #   print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  # end

#### REFACTORED BELOW #######################################

  def predicted_deaths
    threshold = [0, 50, 100, 150, 200]
    proportion = [0.05, 0.1, 0.2, 0.3, 0.4]
    i = 0
    while i <= 4
      if threshold[i] <= @population_density
        number_of_deaths = (@population * proportion[i]).floor
      end
      i = i + 1
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

# takes population_density and state as arguments, and calculates the speed, how fast the outbreak will spread
# prints a human readable statement of how fast the outbreak will spread across a given state

    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

  def speed_of_spread #in months
    speed_array = [2.5, 2, 1.5, 1, 0.5]
    threshold = [0, 50, 100, 150, 200]
    i = 0
    while i <= 4
      if threshold[i] <= @population_density
        speed = speed_array[i]
      end
      i = i + 1
    end
    puts " and the outbreak will spread across the state in #{speed} months."
  end
end
    # speed = 0.0
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

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