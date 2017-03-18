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
def display_list(db)
  list = db.execute("SELECT id, item, date FROM todolist")
  list.each do |x|
    puts "#{x[0]}: #{x[1]} Due: #{x[2]}" 
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

add_item(db, "Milk Cows", "11-11-1911")
display_list(db)

  # A method that will mark items as done
    #Input: To do list item that is done
    #

  # A method that will delete to do list items 
  # A method that will make a new list
    #This method should create a new table and allow it to be named
