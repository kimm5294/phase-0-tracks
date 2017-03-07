# Virus Predictor

# I worked on this challenge [by myself, with: Michael Knapp].
# We spent [1.25] hours on this challenge.

# EXPLANATION OF require_relative
#Require is used to link two files and pull code from the other file into the current one, as if they were in the same file. 
#Relative means that the files are linked together using a relative path from the current file as opposed to an absolute path, 
#which require would use. 
require_relative 'state_data'

class VirusPredictor

  #This method takes the inputs state of origin, population density and population and stores them into instance variables 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #This method will call both other methods in the class which will print statements regarding predicted deaths and speed of spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #This method predicts number of deaths based on population density and population then returns a statement for each state and its 
  #predicted deaths 
  def predicted_deaths
    # predicted deaths is solely based on population density

    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x = 0.3
    elsif @population_density >= 100
      x = 0.2
    elsif @population_density >= 50
      x = 0.1
    else
      x = 0.05
    end

    number_of_deaths = (@population * x).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #This method uses population density to predict the speed of the spread of the virus in months and then prints a statment
  #saying how fast it will spread across the state
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

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

alabama.speed_of_spread

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end 

STATE_DATA.each do |key, value|
  x = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
  x.virus_effects 
end 

#=======================================================================
# Reflection Section
=begin 
The differences between the two different hash syntaxes is that one uses a string as the key and then a hash rocket.
The other syntax uses a symbol as the key and therefore uses a colon instead of a hash rocket to separate it from the value. 

Require is used to link a file to another file so that they act as if they were in the same file. 
The difference between require and require relative is that require relative uses a relative path to link the files
while require uses an absolute path. 

Some ways to iterate through a hash include the .each method or .map. 

When refactoring virus_effects I noticed that the variables were instance variables and had the "@" symbol in front of them. 

The concept I felt that I most solidified in this challenge was the idea of refactoring and what to look for when trying to do that. 
=end 
