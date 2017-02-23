=begin 
Pseudocode for Simple Search
-Find the length of the array
-Find position in length of requested number
-Print index value of given number
=end

#example array for simple search
numbers = [42, 89, 23, 1, 7]

#method for simple search
def search(array, number)
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

#puts search(numbers, 7)

=begin
Pseudocode for Fibonacci Sequence 
-create array of first two Fibonacci numbers [0, 1]
-create a method that loops through and adds numbers to the array
-add numbers to the array one at a time
-add those numbers by adding sum of previous two numbers to array 
-continue this loop until you get to desired index
=end

#starting array with 0 and 1 for Fibonacci sequence
fib_sequence = [0, 1]

#method for fibonacci sequence
#num is which fibonacci number you would like to have printed
#you return num-1 bc the index starts from 0
#num-2 bc we start with 2 items in the array
def fib(array, num)
  (num-2).times do |x|
    array.push((array[-1] + array[-2]))
  end
  return array[num-1] 
end 

p fib(fib_sequence, 100)
p fib_sequence









