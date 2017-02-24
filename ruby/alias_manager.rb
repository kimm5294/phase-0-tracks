=begin
Pseudocode
-Prompt for input 
-Store input into variable
-Break up input into two separate strings and store each name in array as individual letters
-Create two separate variables: one for vowels in order and the other for consonants in order
-Create two loops: one for vowels and one for consonants that change the letter to the next one
-Join the letters back together to make the new name and print name as well as flipping first and last name
=end 



#Method for splitting string
def alias_generator(string)
  split_name = string.split(" ")
  first_name = [split_name[1].chars]
  last_name = [split_name[0].chars]
  puts first_name
  puts last_name
end 

#alias_generator("matt kim")