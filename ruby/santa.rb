class Santa

  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age 

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

  #add one year to age
  def celebrate_birthday
    @age = @age + 1
  end 

  #moves reindeer to last in the rankings
  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name) == true
      @reindeer_ranking.delete(reindeer_name)
      @reindeer_ranking << reindeer_name
    end 
  end

  #Method for returning reindeer ranking
  def reindeer_ranking
    return @reindeer_ranking  
  end 

end 

  
santas = []

example_genders = ["male", "female", "agender", "bigender", "gender fluid", "N/A"]
example_ethnicities = ["african american", "asian", "latino", "native american", "pacific islander", "white", "other", "N/A"]

#code used to create some test santas and test the methods 
=begin 
#add 10 santas to santas array using rand(int) as a random number generator to choose a random gender/ethnicity
10.times {santas << Santa.new(example_genders[rand(6)], example_ethnicities[rand(8)])}

puts santas[1].gender 
santas[1].gender = "bro"
puts santas[1].gender 
puts "..."
puts santas[1].age
santas[1].celebrate_birthday 
puts santas[1].age 
puts "..."
puts santas[1].ethnicity
p santas[1].reindeer_ranking
santas[1].get_mad_at("Prancer")
p santas[1].reindeer_ranking
=end 

#Code that prints out a bunch of random santas for release 4
100.times do |x| 
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  santas[x].age = rand(141)
  puts "Santa #{x}"
  puts santas[x].age 
  puts santas[x].ethnicity
  puts santas[x].gender 
  p santas[x].reindeer_ranking
  p "..."
end 