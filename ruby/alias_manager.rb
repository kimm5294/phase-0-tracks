=begin
Pseudocode
-Prompt for input 
-Store input into variable
-Break up input into two separate strings and store each name in array as individual letters
-Create two separate variables: one for vowels in order and the other for consonants in order
-Create method for changing vowels and consonants to the next one
-Loop through input array for method and inside that loop have separate loops checking for consonants and vowels
-Loop through the arrays for first and last name using the vowel and consonant method to change the letters
-Join the letters back together to make the new name and print name as well as flipping first and last name
=end 



def letter_change(array)
  con = "bcdfghjklmnpqrstvwxyz"
  cons = con.chars.reverse
  vows = "aeiou".chars.reverse
  name = []
  array.length.times do |x| 

    name.push(nil) #creates new array to add changed letters to

    vows.length.times do |y| #changes vowels
      if array[x] == vows[y]
        name[x] = vows[y-1]
      end 
    end 

    cons.length.times do |z| #changes consonants 
      if array[x] == cons[z]
        name[x] = cons[z-1]
      end 
    end

  end
  array = name
end 

#Method for splitting string and reuniting 
def alias_generator(string)
  split_name = string.downcase.split(" ")
  first_name = split_name[1].chars
  last_name = split_name[0].chars
  final_first = letter_change(first_name).join.capitalize
  final_last = letter_change(last_name).join.capitalize
  return final_first + " " +final_last
end 


#User Interface
puts "Please enter a first and last name (type 'quit' to exit)"
name_database = {}
loop do
  input = gets.chomp 
  break if input == "quit"
  p alias_generator(input)
  name_database[input] =  alias_generator(input) 
end 
name_database.each {|key, value| puts "#{key} is also known as #{value}" }



