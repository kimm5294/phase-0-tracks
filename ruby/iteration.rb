
#Release 0
def message
  puts "blah"
  yield
end
message {puts "another blah"}



#Release 1
animals = ["Zebra", "Lion", "Monkey", "Harambe"]

oceans = {
  "stingray" => "Pacific",
  "shark" => "Atlantic",
  "crab" => "Pacific",
  "coral" => "Arctic"
}

puts animals
animals.each do |animal|
  puts animal + "!"
end
puts animals

puts oceans
oceans.each do |fish, ocean|
  puts fish + " " + ocean
end
puts oceans

puts animals
animals.map! do |zoo_animal|
  zoo_animal.upcase
end
puts animals

puts " "
puts " "

#Release 2
=begin
#this is the first answer to release 2
animals.delete_if{ 
  |animal| animal.length > 5
}
puts animals
=end

=begin
#this is the second answer to release 2
animals.keep_if{
  |animal| animal.length > 4
}
puts animals
=end 

=begin 
#this is the answer to the third question in release 2
print animals 
animals.map! do
  |animal|
  if animal.length > 5
    animal
  end
end
puts animals
=end

=begin
#this is the answer to the fourth question in release 2 
print animals
puts " "
animals = animals.drop_while{|x| x.length < 6}
puts " "
print animals
=end