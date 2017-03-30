# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# The difference is based on where the file is being loaded from. 
# require_relative is used if the required file is in the same directory

# require is used primarily to require files from the ruby library 
# but it can take an absolute path to find something on your local machine
# It is useful for Ruby gems and shims

require_relative 'state_data'

# Defines a class
class VirusPredictor

# Setting up what happens when you create an instance of the Class and define certain variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls two of the instance methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

# Takes inputs and calculates number of deaths based on population density
# Prints out number of deaths predicted in a certain state
  def predicted_deaths
    # predicted deaths is solely based on population density

    @death_rate = case @population_density
      when 200..Float::INFINITY then 0.4
      when 150...200 then 0.3
      when 100...150 then 0.2
      when 50...100 then 0.1
      when 0...50 then 0.05
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  def number_of_deaths
    (@population * @death_rate).floor
  end

# Takes inputs and calculates speed of spread based on population density
# Speed is faster the higher the density

  def speed_of_spread
    #in months
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

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, population_hash|
  current_state = VirusPredictor.new(state, population_hash[:population_density],population_hash[:population])
  current_state.virus_effects
end

#=======================================================================
# Reflection Section

# Private is good to control who can access a method - it keeps interface and application separate
# Classes shouldn't expose more than they really need to do. Law of Demeter.
# This is helpful when working with others - don't want to open up more than is really needed.
# Otherwise you can accidentally break things.
# People will expect public API not to change that much. Private API is fair game for changes.






