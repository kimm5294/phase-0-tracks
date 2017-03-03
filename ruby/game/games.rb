=begin 
#PSEUDOCODE
#Create class for game and define attributes like guess count, word length, guesses left, etc 

#Create an initialize method to take an input of the word the first user puts in so the next can guess
  #Input: word for the second user to guess
  #Save input
  #Create guess count, input, and two array variables and also a boolean of whether the game is won, guesses left, 
  #guessed letters, and boolean for already guessed
  #Output: Saved input as string

#Create method for taking input and putting it into array
  #Input: string that user entered
  #Store string into array as individual letters 
  #Output: string input converted into array of letters

#Create method to create array of blanks with same length as input 
  #Input: none
  #Get the length of the input array 
  #Return an array that has the same length except all of its values are equal to "_"
  #As a bonus you can make spaces and punctuation appear as themselves to accommodate for phrases
  #Output: new array of blanks and spaces

#Create guessing method 
  #Input: letter that user guesses
  #Iterate through the input array 
    #IF: letter matches then store that letter to the array of blanks in the appropriate location
    #ELSE: tell user it was wrong and prompt for another guess
    #Increase the guess count each time 
  #Output: Modified array of blanks

#Create method that determines whether the game has been won yet
  #Input: none
  #IF both arrays (input and array of blanks) are equal to each other then the variable for game over is true
  #ELSE it is going to return false 
  #Output: boolean 

#Create method for determining number of guesses based on length of phrase 
  #Input: none 
  #Determine number of actual letters in array of letters 
  #Number of guesses left will equal number of actual letters plus 5 
  #Output: integer for number of guesses left

#Create method for already guessed letter or not
  #Input: letter user guessed 
  #Iterate through array of blanks and compare to see if letter has been guessed
  #IF guessed return true
  #IF not guessed return false 
  #IF letter has been guessed guess count does not go up
  #Output: boolean
=end 

#Class code and methods
class Game
  attr_reader :guess_count, :input, :input_array, :blank_array, :is_over, :guesses_left
  attr_reader :already_guessed

  def initialize(input_string)
    @input = input_string 
    @guess_count = 0
    @input_array = []
    @blank_array = []
    @is_over = false
    @guesses_left = 0 
    @already_guessed = false
    return @input
  end 

  def store_input(input_string)
    @input_array = input_string.chars
    return @input_array
  end 

  def create_blankarray
    @input_array.length.times do |x|
      if @input_array[x] == " "
        @blank_array[x] =" "
      elsif @input_array[x] == "!"
        @blank_array[x] = "!"
      elsif @input_array[x] == "."
        @blank_array[x] = "."
      elsif @input_array[x] == ","
        @blank_array[x] = ","
      elsif @input_array[x] == "?"
        @blank_array[x] = "?"
      elsif @input_array[x] == "-"
        @blank_array[x] = "-"
      else 
        @blank_array[x] = "_"
      end 
    end 
    return @blank_array
  end 

  def guess_letter(guess)
    @guess_count += 1
    @input_array.length.times do |x|
      if @input_array[x] == guess
        @blank_array[x] == guess 
      end  
    end
    return @blank_array
  end 

  def game_over
    if @blank_array == @input_array
      @is_over = true 
    else 
      return false 
    end 
  end 

  def number_guesses
    counter = 0
    @input_array.length.times do |x|
      if @input_array[x] == " "
        counter += 1
      elsif @input_array[x] == "-"
        counter += 1
      elsif @input_array[x] == "?"
        counter += 1
      elsif @input_array[x] == "!"
        counter += 1
      elsif @input_array[x] == "."
        counter += 1
      elsif @input_array[x] == ","
        counter += 1
      end 
    end 
    @guesses_left = @input_array.length - counter + 5
    return @guesses_left
  end 

  def guessed_already(guess)
    @already_guessed = false
    @blank_array.each do |x|
      if x == guess
        @already_guessed = true 
      end 
    end 
    return @already_guessed
  end 

end 



#USER INTERFACE CODE
#Prompt for word to guess
puts "Please enter word or phrase to begin game:"
input = gets.chomp 
g1 = Game.new(input)

#this returns as @input_array
g1_input_array = g1.store_input(input)

#Number of guesses left 
g1_guesses_left = g1.number_guesses

#Create Blank Array
g1_blank_array = g1.create_blankarray

#Prompt user to guess and display the word/phrase 
loop do 
  if g1.game_over == true
    puts "Nice job. You win!"
    break 
  end 

  if g1_guesses_left <= 0
    puts "LOSER!!!"
    break
  end 

  if g1_guesses_left > 1 
    puts "Here is the word/phrase. Guess a letter! You have #{g1_guesses_left} guesses remaining"
  else 
    puts "Here is the word/phrase. Guess a letter! You have #{g1_guesses_left} guess remaining"
  end 

  puts g1_blank_array.join
  user_guess = gets.chomp 

  if g1.guessed_already(user_guess) == true
    puts "You've already guessed this letter!"
  else 
    g1.guess_letter(user_guess)
    g1_guesses_left -= 1
  end 



end 








