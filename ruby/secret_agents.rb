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
  puts string
end

=begin
-define a method called decrypt
-set input as a string
-create a counter variable that starts at 0
-create loop that loops through each index of string 
-in loop use .

=end

def decrypt (string)
  alphabet= "abcdefghijklmnopqrstuvwxyz"

end


puts encrypt("abc")

puts encrypt("zed")