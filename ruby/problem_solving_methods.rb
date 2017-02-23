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

#p fib(fib_sequence, 100)
#p fib_sequence


=begin 
Pseudocode for Sorting Array
-define a method for the sorting method in this case bubble sort
-set a variable for array length 
-create a loop to contain bubble sorting method
-create a variable that is assumed as false
-bubble sorting method compares array items that are next to each other by index
-sorting method inside loop swaps based on value of each index by comparing indexes that are next to each other
-variable in loop is changed to true when array values are switched
-once swapping is complete loop will break because variable will have value of true 
-it will print the sorted array once loop is broken  
=end 


#array used for sorting
to_be_sorted = [10, 123, 1, 43, 67, 37, 987, 43, 6, 4, 1, 76, 34]

#method for sorting array- bubble sort
def bubble_sort(array)
  loop do 
    x = false
    (array.length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        x = true
      end 
   end 
  break if not x 
  end 
puts array 
end 

bubble_sort(to_be_sorted)










