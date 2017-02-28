# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# (create array & hash of the items)
# steps: 
  # use .split(' ') to separate list items into array items
  # loop through array to push list items into keys for hash
  # set default quantity = 1
  # print the list to the console [use last method to print list]
# output: [hash]


# Method to add an item to a list
# input: list (hash), item name, and optional quantity
# steps: 
  #push item name (key) & quantity (value) into hash
# output: new list with added item & quantity

# Method to remove an item from the list
# input: list, item name
# steps:
  # use method to find matching key in list
  #use method to delete key value pair from list
# output: new list without the item

# Method to update the quantity of an item
# input: list, item name, desired quantity
# steps: 
  # use method to find matching key in list
  #use method to reset value of a key
# output: list with updated quantity


# Method to print a list and make it look pretty
# input: list
# steps:
  #print title sentence 
  #print each of the (k,v) pairs with puts 

# output: list printed out


#Method Code
#method that creates list
def create_list(string)
  list_array = string.split(" ")
  list_hash = {}
  list_array.map {|key| list_hash[key]=1}
  return list_hash
end 

#method that adds items to list
def add_item(list, item, optional_quantity)
  if optional_quantity == nil
    list[item] = 1
  else 
    list[item] = optional_quantity
  end 
  return list
end 

#method that removes an item from list 
def remove_item(list, item)
  list.delete(item)
  return list 
end 

#method that updates quantities to items in list
def update_quantity(list, item, desired_quantity) 
  if list.include?(item) == true
    list[item] = desired_quantity
  end 
  return list 
end 

#method that prints list
def print_list(list)
  puts "Grocery List"
  list.each {|key, value| puts "#{key}: qty-#{value}"}
end 

#User Interface
puts "Please enter items for grocery list"
initial_items = gets.chomp
main_list = create_list(initial_items)
print_list(main_list)

loop do 
  puts "Would you like to update quantities (update), add items (add) or remove items (remove)? Or type done"
  input = gets.chomp
  
  break if input == "done"
  
  if input == "update"
    puts "Please enter item to update"
    update_item = gets.chomp
    puts "Please enter desired quantity"
    quan = gets.chomp.to_i
    main_list = update_quantity(main_list, update_item, quan)
  elsif input == "add"
    puts "Please enter item to add"
    add_item = gets.chomp
    puts "Please enter quantity of items"
    add_quan = gets.chomp.to_i
    main_list = add_item(main_list, add_item, add_quan)
  elsif input == "remove"
    puts "Please enter item to remove"
    remove_item = gets.chomp
    main_list = remove_item(main_list, remove_item)
  else 
    puts "Please enter valid command"
  end 
  print_list(main_list)
end 


