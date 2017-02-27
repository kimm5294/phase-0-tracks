class Santa

  def speak 
    puts "Ho, ho, ho! Haaaappy holidays!"
  end 

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end 

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity 
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end 

end 

santas = []

example_genders = ["male", "female", "agender", "bigender", "gender fluid", "N/A"]
example_ethnicities = ["black", "asian", "latino", "native american", "pacific islander", "white", "other", "N/A"]

#add 10 santas to santas array using rand(int) as a random number generator to choose a random gender/ethnicity
10.times {santas << Santa.new(example_genders[rand(6)], example_ethnicities[rand(8)])}

