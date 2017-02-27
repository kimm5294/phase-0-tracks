class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {puts "Woof!"}
  end

  def roll_over
    puts "***Rolls Over***"
  end

  def dog_years(human)
    return human * 7
  end

  def sit
    puts "***Sits***"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

fido = Puppy.new
fido.speak(3)
fido.roll_over
p fido.dog_years(5)
fido.sit

names = []
class Cat
  def initialize
    puts "Initializing new kitty instance..."
  end

  def meow(int)
    int.times {puts "Meow"}
  end

  def cough_furball
    puts "***spits up fur ball***"
  end
end

counter = 0
while counter < 50
  names.push("Cat #{counter}")
  names[counter] = Cat.new
  counter += 1
end

names.each do |x| 
  x.meow(1)
  x.cough_furball
end