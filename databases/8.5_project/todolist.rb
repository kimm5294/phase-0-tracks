#This program will create and store a to do list
#Functions will include showing the list, making a new list, checking things off, 
#showing completed items, deleting items from list or editing them 
#and putting a due date on them

#Require the needed gems
require "sqlite3"

#Create the sqlite3 database
database = SQLite3::Database.new("todolist.db")
database.results_as_hash = true 

#Create the table if it doesn't exist already 
create_table_cmd = <<-yoyoyo
  CREATE TABLE IF NOT EXISTS todolist (
  id INTEGER PRIMARY KEY, 
  item VARCHAR(255),
  date DATE
  )
yoyoyo
database.execute(create_table_cmd)

#Needed methods:
  # A method that will display to do list
    #No input
    #Print out the to do list item and due date

  # A method that will edit to do list items
    #Input: 
    #

  # A method that will add to do list items
  # A method that will mark items as done
  # A method that will delete to do list items 
  # A method that will make a new list
    #This method should create a new table and allow it to be named
