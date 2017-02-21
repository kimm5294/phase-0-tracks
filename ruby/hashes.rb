=begin
  -Create hash 
  -Repeat steps for all information inputs
    -Print statement prompting for information
    -Convert input into proper data type to be stored in hash
    -Have user input set to a variable and shovel value into hash key named after the variable  
  -Print prompt asking if user wants to edit a key value pair
  -Write code that takes input for the prompt and can be told which key if any the user wants to change
    -If no key is to be changed then skip ahead to the end
    -If user does want to change a key then prompt user for what they want to change the value to 
    -Write code that changes the value for the key and overwrites the old one
  -Print hash
=end

client_info = {
  client_name: "",
  age: "",
  number_children: "",
  decor_theme: "",
  has_pets: ""
}

puts "Please enter client name: "
client_info[:client_name] = gets.chomp

puts "Please enter client age: "
client_info[:age] = gets.chomp.to_i

puts "Please enter client's number of children: "
client_info[:number_children] = gets.chomp.to_i

puts "Please enter decor theme: "
client_info[:decor_theme] = gets.chomp

puts "Does client have any pets? (y/n)"
pets = ""
until pets == "y" || pets == "n" 
  pets = gets.chomp
  if pets == "y"
    client_info[:has_pets] = true
  elsif pets == "n"
    client_info[:has_pets] = false
  else 
    puts "Please enter a valid entry (y/n)"
  end
end 
puts client_info 
