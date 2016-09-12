# Virus Predictor

# I worked on this challenge [Hoa Huynh, with: Arshdeep Singh ].
# We spent [1.0] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative is telling the file to refer to another file for input.
#the difference is that require is referring to needed ruby libraries or gems.
#
require_relative 'state_data'

class VirusPredictor
#this method is used to initialize a new instance of the class each time.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#this method is calling the other methods.
  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private
#this method is calculating the deaths of each state at a certain density.
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

    

  end
#this method is calculating how fast the virus is spreading through each state.
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

    

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do | state_name, population_info|
  states = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
  states.virus_effects
end

#=======================================================================
# Reflection Section