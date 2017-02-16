=begin
-define a method called encrypt
-input is a string 
-create loop that loops through each index of string
-in loop use .next function on each index and a bang operator to save value of new index
-end loop once all indexes have been looped
-print new string outside of loop
=end

def encrypt (string)
  counter = 0
  while counter < string.length
    string[counter].next!
    counter+=1
  end
end