puts "Hamster name?"
  hname = gets.chomp
puts "Volume level? (1-10)"
  volume = gets.chomp
  volume = volume.to_i

puts "Fur color?"
  fur = gets.chomp

puts "Good candidate for adoption? (y/n)"
  good = gets.chomp

puts "How old is your hampster?"
  age = gets.chomp
  if age == ""
    age = nil
   else
     age = age.to_i
   end

p hname
p volume
p fur
p good
p age