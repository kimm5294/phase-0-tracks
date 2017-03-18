#This program will create and store a to do list
#Functions will include showing the list, making a new list, checking things off, 
#showing completed items, deleting items from list or editing them 
#and putting a due date on them

#Require the needed gems
require "sqlite3"

#Create the sqlite3 database
db = SQLite3::Database.new("todolist.db")

#Create the table if it doesn't exist already 
create_table_cmd = <<-yoyoyo
  CREATE TABLE IF NOT EXISTS todolist (
  id INTEGER PRIMARY KEY, 
  item VARCHAR(255),
  date DATE,
  done BOOLEAN
  )
yoyoyo
db.execute(create_table_cmd)

#Needed methods:
  # A method that will display to do list
    #Input: db (the database)
    #Print out the to do list item and due date
    #Only print items where done equals false
def display_list(db)
  list = db.execute("SELECT id, item, date, done FROM todolist")
  list.each do |x|
    if x[3] == "false"
      puts "#{x[0]}: #{x[1]} Due: #{x[2]}" 
    end 
  end 
end 

  # A method that will edit to do list items which will be selected by its id number
    #Input: id of item to be edited, database, edited item
    #Select to do list item to be edited by using primary key to select it
    #Update item in the database
def edit_item(db, id, new_item)
  db.execute("UPDATE todolist SET item=? WHERE id=?", [new_item, id])
end 

# A method that will edit to do list items which will be selected by its id number
    #Input: id of item to be edited, database, new date
    #Select to do list item to be edited by using primary key to select it
    #Update the due date using input
def edit_date(db, id, new_date)
  db.execute("UPDATE todolist SET date=? WHERE id=?", [new_date, id])
end

  # A method that will add to do list items
    #Input: database name, item to be added, due date
    #Use inputs to add new item to list
def add_item(db, new_item, new_date)
  db.execute("INSERT INTO todolist (item, date, done) VALUES (?, ?, ?)", [new_item, new_date, "false"])
end 

  # A method that will mark items as done
    #Input: To do list item that is done's id number, database
    #Change the value of item's done variable to true
def mark_done(db, id)
  db.execute("UPDATE todolist SET done=? WHERE id=?", ["true", id])
end 

  # A method that will delete to do list items 
    #Input: database, id of item to be deleted
    #Use item's id number to delete the row from the table
def delete_item(db, id)
  db.execute("DELETE FROM todolist WHERE id=?", [id])
end 


  # A method that will show the completed items 
    #Input: database
    #Print out the to do list items that have done equals to true
def show_completed(db)
  list = db.execute("SELECT id, item, date, done FROM todolist")
  list.each do |x|
    if x[3] == "true"
      puts "#{x[0]}: #{x[1]} Due: #{x[2]}" 
    end 
  end 
end 

#USER INTERFACE

loop do 

  puts "To-Do List"
  display_list(db)
  puts "_____________________________"
  puts "What would you like to do?"
  puts "1- Mark item as done"
  puts "2- Add an item"
  puts "3- Delete an item"
  puts "4- Edit an item"
  puts "5- Edit the date of an item"
  puts "6- Show completed items"
  puts "7- Display to-do list"
  puts 'Type "exit" or "quit" in order to quit out of the to-do list program'
  puts "Please enter the number of the action you would like to take:"

  input = gets.chomp

  if input == "exit" || input == "quit"
    break 
  elsif input == "1"
    puts "Please enter the id number of the item you would like to mark done:"
    id_number = gets.chomp.to_i
    mark_done(db, id_number)

  elsif input == "2"
    puts "Please enter the new item you would like to add to your list:"
    added_item = gets.chomp
    puts "Please enter the due date of the item:"
    due_date = gets.chomp
    add_item(db, added_item, due_date)
  elsif input == "3"
    puts "Please enter the id number of the item you would like to delete from the list:"
    deleted = gets.chomp.to_i
    delete_item(db, deleted)

  elsif input == "4"
    puts "Please enter the id number of the item you would like to edit:"
    edit_id = gets.chomp.to_i
    puts "Please enter the edited item you would like to enter:"
    edited_item = gets.chomp
    edit_item(db, edit_id, edited_item)
  elsif input == "5"
    puts "Please enter the id number of the item you would like to edit:"
    edit_id = gets.chomp.to_i
    puts "Please enter the new date you would like to enter:"
    edited_date = gets.chomp
    edit_date(db, edit_id, edited_date)
  elsif input == "6"
    puts "_____________________________"
    puts "Completed Items List"
    show_completed(db)
    puts "_____________________________"
  elsif input == "7"
    display_list(db)
  end 
  puts "_____________________________"
  puts ""
end 
