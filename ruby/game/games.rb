=begin 
#PSEUDOCODE
#Create class for game and define attributes like guess count, word length, 

#Create an initialize method to take an input of the word the first user puts in so the next can guess
  #Input: word for the second user to guess
  #Save input
  #Create guess count, input, and two array variables and also a boolean of whether the game is won
  #Output: Saved input as string

#Create method for taking input and putting it into array
  #Input: string that user entered
  #Store string into array as individual letters 
  #Output: string input converted into array of letters

#Create method to create array of blanks with same length as input 
  #Input: array of letters, empty blank array
  #Get the length of the array 
  #Return an array that has the same length except all of its values are equal to "_"
  #As a bonus you can make spaces and punctuation appear as themselves to accommodate for phrases
  #Output: array of blanks and spaces

#Create guessing method 
  #Input: letter that user guesses, blank array, letters array
  #Iterate through array of letters and check to see if guessed letter is in array
    #IF: letter matches then store that letter to the array of blanks in the appropriate location
    #ELSE: tell user it was wrong and prompt for another guess
    #Increase the guess count each time 
  #Output: Modified array of blanks

#Create method that determines whether the game has been won yet
  #Input: array of blanks and spaces, array of letters
=end 

#Class code and methods
class Game
  attr_reader :guess_count, :input, :guess_count, :input_array, :blank_array, :is_over

  def initialize(input_string)
    @input = input_string 
    @guess_count = 0
    @input_array = []
    @blank_array = []
    @is_over = false
    return @input
  end 

  def store_input(input_string)
    @input_array = input_string.chars
    return @input_array
  end 

  def create_blankarray(letters_array, new_blank_array)
    letters_array.length.times do |x|
      if letters_array[x] == " "
        new_blank_array.insert(x, " ")
      elsif letters_array[x] == "!"
        new_blank_array.insert(x, "!")
      elsif letters_array[x] == "."
        new_blank_array.insert(x, ".")
      elsif letters_array[x] == ","
        new_blank_array.insert(x, ",")
      elsif letters_array[x] == "?"
        new_blank_array.insert(x, "?")
      elsif letters_array[x] == "-"
        new_blank_array.insert(x, "-")
      else 
        new_blank_array.insert(x, "_")
    end 
    return new_blank_array
  end 

  def guess_letter(guess, new_blank_array, letters_array)
    @guess_count += 1
    letters_array.length.times do |x|
      if letters_array[x] == guess
        new_blank_array[x] == guess 
      end  
    end
    return new_blank_array
  end 

  def game_over(new_blank_array, letters_array)
    if new_blank_array == letters_array
      @is_over = true 
    else 
      return false 
    end 
  end 

end 
