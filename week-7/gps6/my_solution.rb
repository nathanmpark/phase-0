# Virus Predictor

# I worked on this challenge [by myself, with: Ryan Lesson].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#For the file that the require_relative is defined on, It makes available all content on the file it references.
#Require_relative defines a path for ruby to find the file it references, relative to the file that require_relative is being defined on. Require starts at the beginning of you computers home file and needs an explicit path.

require_relative 'state_data'

class VirusPredictor

  #Defines the parameters that will be passed into the class and then defines these parameters as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calls upon two methods with the instance variables put in as the parameters of the methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #Takes the hash values from STATE_DATA and inputs them into this method as parameters. Runs flow control on the parameters to determine what type of operations to run on that specified parameter. Finally, it prints out a statement. Predicts number of deaths.
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

  #Takes the initialized values and runs flow control on them. The methods uses a specified type of operation depending on what if statement returns true. Prints the data. Predicts speed of spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.


    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.keys.each do |state_name|
  display = VirusPredictor.new(state_name,STATE_DATA[state_name][:population_density],STATE_DATA[state_name][:population])
  display.virus_effects
end

# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The difference is that one is using a string as a key and the other is using the shorthand for the symbol notation. (:symbol => value is the same as symbol: value).

# What does require_relative do? How is it different from require?
# Require relative will read in a file as long you reference it based on relative file path, while require must have an explicit full file path name.

# What are some ways to iterate through a hash?
# You can iterate through a hash using any enumerable, which works through the .each method. Some examples include .map, .sort, etc.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# There was an excess/repetitive use of code by passing the parameters to the method virus_effects. This was not needed as the initialize method created instance variables which could be passed through instance methods within the class.

# What concept did you most solidify in this challenge?
# Solidified my understanding of the class structure and how the instance variables can be used across methods.