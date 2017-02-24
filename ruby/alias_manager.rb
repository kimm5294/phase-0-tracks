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



#Method for splitting string
def alias_generator(string)
  split_name = string.downcase.split(" ")
  first_name = [split_name[1].chars]
  last_name = [split_name[0].chars]

  vowels(first_name)

  puts first_name
  puts last_name
end 



def vowels(array)
  vow = "aeiou"
  vows = vow.chars
  array.map do |x|
    vows.map do |y|
      if y == x 
        x = vows[y+1]
      end 
    end 
  end 
end 


def consonants(array)
  con = "bcdfghjklmnpqrstvwxyz"
  cons = con.chars

end


alias_generator("matt kim")