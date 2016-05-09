# Virus Predictor

# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density

# Original code

    #if @population_density >= 200
    #  number_of_deaths = (@population * 0.4).floor
   # elsif @population_density >= 150
    #  number_of_deaths = (@population * 0.3).floor
    #elsif @population_density >= 100
    #  number_of_deaths = (@population * 0.2).floor
    #elsif @population_density >= 50
    #  number_of_deaths = (@population * 0.1).floor
   # else
    #  number_of_deaths = (@population * 0.05).floor
   # end

# Refactored solution
    number_of_deaths = (@population * 0.05).floor

    number_of_deaths = (@population * 0.4).floor if @population_density >= 200
    number_of_deaths = (@population * 0.3).floor if @population_density >= 150
    number_of_deaths = (@population * 0.3).floor if @population_density >= 100
    number_of_deaths = (@population * 0.3).floor if @population_density >= 50

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
   # speed = 0.0
# Original code
  #if @population_density >= 200
  #  speed += 0.5
  #elsif @population_density >= 150
  #  speed += 1
  #elsif @population_density >= 100
   # speed += 1.5
  #elsif @population_density >= 50
   # speed += 2
  #else
  #  speed += 2.5
  #end

# Refactored solution
  speed = 2.5

  speed = 2 if @population_density >= 50
  speed = 1.5 if @population_density >= 100
  speed = 1 if @population_density >= 150
  speed = 0.5 if @population_density >= 200


  puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, data|

  temp =VirusPredictor.new(state, data[:population_density], data[:population])
  temp.virus_effects

end




#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# - the first set of keys is a string and the second one is a symbol
# What does require_relative do? How is it different from require?
# - require_relative points to the file that is located in the same folder as oposed to require
# What are some ways to iterate through a hash?
# - we can iterate using .each and .times
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# - those variables are not required since they are initialized in the begining and are instance variables, available throught the class
# What concept did you most solidify in this challenge?
# - refactoring and making the code more DRY, the fact taht we don't need to call the variables all the time inside of the class