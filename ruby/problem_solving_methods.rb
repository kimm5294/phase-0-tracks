=begin 
Pseudocode
-Find the length of the array
-Find position in length of requested number
-Print index value of given number
=end

numbers = [42, 89, 23, 1, 7]

def counter(array, number)
  answer = nil
  array.length.times do |x|
    if array[x] == number 
      answer = x
      return answer
    end
  end 
  if answer == nil || answer >= array.length
    return "nil"
  end   
end 

puts counter(numbers, 7)

