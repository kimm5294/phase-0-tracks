=begin 
#PSEUDOCODE
#Create class for game and define attributes like input and input array 

#Create an initialize method to take an input of the word the first user puts in so the next can guess
  #Input: word for the second user to guess
  #Save input 
  #Create input, and array variable for word  
  #Output: Saved input as string

#Create method for taking input and putting it into array
  #Input: none
  #Store string into array as individual letters 
  #Output: string input converted into array of letters

#Create method to create array of blanks with same length as input 
  #Input: array of letters and another array that is going to be used to convert the input array
  #Get the length of the input array 
  #Return an array that has the same length except all of its values are equal to "_"
  #As a bonus you can make spaces and punctuation appear as themselves to accommodate for phrases
  #Output: new array of blanks and spaces

#Create guessing method 
  #Input: letter that user guesses, input array, guessing array
  #Iterate through the input array 
    #IF: letter matches then store that letter to the array of blanks in the appropriate location
    #ELSE: tell user it was wrong and prompt for another guess
  #Output: Modified array of blanks

#Create method that determines whether the game has been won yet
  #Input: input array and guessing array
  #IF both arrays (input and array of blanks) are equal to each other then the variable for game over is true
  #ELSE it is going to return false 
  #Output: boolean 

#Create method for determining number of guesses based on length of phrase 
  #Input: input array and guesses remaining 
  #Determine number of actual letters in array of letters 
  #Number of guesses left will equal number of actual letters plus 5 
  #Output: integer for number of guesses left

#Create method for already guessed letter or not
  #Input: letter user guessed and array of letters user already guessed
  #Iterate through array of blanks and compare to see if letter has been guessed
  #IF guessed return true
  #IF not guessed return false 
  #IF letter has been guessed guess count does not go up
  #Output: boolean

#Create method that adds letter to array of guessed letters
  #Input: array of letters user already guessed and users guess
  #Add users guess into the array
  #Output: array of letters user already guessed
=end 

#Class code and methods
class Game
  attr_reader :input, :input_array

  def initialize(input_string)
    @input = input_string 
    @input_array = []
    return @input
  end 

  def store_input
    @input_array = @input.chars
    return @input_array
  end 

  def start_game(input_array, guessing_array)
    input_array.length.times do |x|
      if input_array[x] == " "
        guessing_array[x] =" "
      elsif input_array[x] == "!"
        guessing_array[x] = "!"
      elsif input_array[x] == "."
        guessing_array[x] = "."
      elsif input_array[x] == ","
        guessing_array[x] = ","
      elsif input_array[x] == "?"
        guessing_array[x] = "?"
      elsif input_array[x] == "-"
        guessing_array[x] = "-"
      else 
        guessing_array[x] = "_"
      end 
    end 
    return guessing_array
  end 

  def guess_letter(guess, input_array, guessing_array)
    input_array.length.times do |x|
      if input_array[x] == guess
        guessing_array[x] = guess 
      end  
    end
    return guessing_array
  end 

  def game_over(input_array, guessing_array)
    is_over = false
    if guessing_array == input_array
      is_over = true 
    else 
      is_over = false 
    end 
  end 

  def number_guesses(input_array, guesses_remaining)
    counter = 0
    input_array.length.times do |x|
      if input_array[x] == " "
        counter += 1
      elsif input_array[x] == "-"
        counter += 1
      elsif input_array[x] == "?"
        counter += 1
      elsif input_array[x] == "!"
        counter += 1
      elsif input_array[x] == "."
        counter += 1
      elsif input_array[x] == ","
        counter += 1
      end 
    end 
    guesses_remaining = input_array.length - counter + 5
    return guesses_remaining
  end 

  def guessed_already(guess, guessed_already_array)
    already_guessed = false
    guessed_already_array.each do |x|
      if x == guess
        already_guessed = true 
      end 
    end 
    return already_guessed
  end 

  def add_to_user_guesses(guess, guessed_already_array)
    guessed_already_array << guess 
    return guessed_already_array
  end 

end 

=begin
#USER INTERFACE CODE
#Prompt for word to guess
puts "Please enter word or phrase to begin game:"
input = gets.chomp
g1 = Game.new(input)
g1_blank_array = []
g1_guessed_already_array = []
g1_guesses_remaining = 0

#this returns as @input_array
g1_input_array = g1.store_input

#Number of guesses left 
guesses_left = 0 
g1_guesses_left = g1.number_guesses(g1_input_array, guesses_left)


#Create Blank Array
g1_blank_array = g1.start_game(g1_input_array, g1_blank_array)

#Prompt user to guess and display the word/phrase 
loop do 
  if g1.game_over(g1_input_array, g1_blank_array) == true
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

  

  if g1.guessed_already(user_guess, g1_guessed_already_array) == true
    puts "You've already guessed this letter!"
  else 
    g1.guess_letter(user_guess, g1_input_array, g1_blank_array)
    g1_guesses_left -= 1
  end 

  g1.add_to_user_guesses(user_guess, g1_guessed_already_array)


end 


=end 
