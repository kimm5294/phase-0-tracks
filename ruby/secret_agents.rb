=begin
-define a method called encrypt
-set input as a string 
-create a counter variable that starts at 0
-create loop that loops through each index of string
-create if/else statement
-in if statement if string[counter]="z" set string[counter]="a"
in else statement write .next function on each index and set equal to string[counter] to save value of new index
-add 1 to counter in loop outside of if/else statement
-end loop once all indexes have been looped
-print new string outside of loop
=end

def encrypt (string)
  counter = 0
  while counter < string.length
    if string[counter]=="z"
      string[counter]="a"
    else
      string[counter]= string[counter].next
    end
    counter+=1
  end
  p string
end

=begin
-define a method called decrypt
-set input as a string
-create a counter variable that starts at 0 and an alphabet variable that is a string and lists all the letters
-of the alphabet in order
-create loop that loops through each index of string and ends once it equals the string length 
-in loop set string[counter]= the letter prior to string[counter] using alphabet[alphabet.index(string[counter])-1]
-add 1 to the counter and end the loop
-print the string
-end the method

=end

def decrypt (string)
  alphabet= "abcdefghijklmnopqrstuvwxyz"
  counter= 0
  while counter < string.length
    string[counter] = alphabet[alphabet.index(string[counter])-1]
    counter+=1
  end
  p string
end


#encrypt("abc")

#encrypt("zed")

#decrypt("bcd")

#decrypt("afe")

#decrypt(encrypt("swordfish"))
#This method call works because each method acts separately and only one is performed at a time and
#then the result of the previous method called becomes the input of the next called method.
#This is why the input "swordfish" comes back out of both methods as the same string. 

