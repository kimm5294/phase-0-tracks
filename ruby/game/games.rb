=begin 
#PSEUDOCODE
#Create class for game and define attributes like guess count, word length, 

#Create an initialize method to take an input of the word the first user puts in so the next can guess
  #Input: word for the second user to guess
  #Save input
  #Output: Saved input as string

#Create method for taking input and putting it into array
  #Input: string that user entered
  #Store string into array as individual letters 
  #Output: string input converted into array of letters

#Create method to change array of letters into array of blanks
  #Input: array of letters
  #Get the length of the array 
  #Return an array that has the same length except all of its values are equal to "_"
  #As a bonus you can make spaces and punctuation appear as themselves to accommodate for phrases
  #Output: array of blanks and spaces

#Create guessing method 
  #Input: letter that user guesses
  #Iterate through array of letters and check to see if guessed letter is in array
    #IF: letter matches then print that letter to the array of blanks in the appropriate location
    #ELSE: tell user it was wrong and prompt for another guess
    #Increase the guess count each time 
  #Output: Modified array and guess count 
=end 

#Class code and methods
class Game
  attr_reader :guess_count, :@input 

  def initialize(input_string)
    @input = input_string 
    @guess_count = 0
  end 

end 
