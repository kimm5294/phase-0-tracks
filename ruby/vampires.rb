puts "How many employees will be processed?"
number_employees = gets.chomp
number_employees = number_employees.to_i
counter = 0

while counter < number_employees

  puts "What is your name?"
  name= gets.chomp

  puts "How old are you?"
  age= gets.chomp

  puts "What year were you born?"
  birthyear= gets.chomp

  puts "Do you like garlic bread? (y/n)"
  gbread= gets.chomp

  puts "Do you want to enroll in company health insurance? (y/n)"
  insurance= gets.chomp

  puts "Please list any allergies and enter done once you are finished"
  allergy = nil
  until allergy == "sunshine" || allergy == "done"
    allergy = gets.chomp
  end

  if allergy == "sunshine"
    puts "Probably a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire" 
  elsif ((2017-birthyear.to_i) != age.to_i) && gbread =="n" && insurance =="n"
    puts "Almost certainly a vampire"
  elsif ((2017-birthyear.to_i) != age.to_i) && (gbread == "n" || insurance =="n")
    puts "Probably a vampire"
  elsif ((2017-birthyear.to_i) == age.to_i) && (gbread =="y" || insurance =="y")
    puts "Probably not a vampire"
  else 
    puts "Results inconclusive"
  end

  counter+=1

end