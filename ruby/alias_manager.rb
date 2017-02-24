=begin
Pseudocode
-Prompt for input 
-Store input into variable
-Break up input into two separate strings and store each name in array as individual letters
-Create two separate variables: one for vowels in order and the other for consonants in order
-Create two separate methods: one for vowels and one for consonants that change the letter to the next one
-Loop through the arrays for first and last name using the vowel and consonant method to change the letters
-Join the letters back together to make the new name and print name as well as flipping first and last name
=end 



def letter_change(array)
  con = "bcdfghjklmnpqrstvwxyz"
  cons = con.chars.reverse
  vows = "aeiou".chars.reverse
  nam = []
  array.length.times do |x| 

    nam.push(nil) #creates new array to add changed letters to

    vows.length.times do |y| #changes vowels
      if array[x] == vows[y]
        nam[x] = vows[y-1]
      end 
    end 

    cons.length.times do |z| #changes consonants 
      if array[x] == cons[z]
        nam[x] = cons[z-1]
      end 
    end

  end 
  array = nam 
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
loop do
  input = gets.chomp 
  break if input == "quit"
  p alias_generator(input)  
end 
