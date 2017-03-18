# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("kittens.db")
db.results_as_hash = true

# learn about fancy string delimiters
vars = "name"
var = "CREATE"
create_table_cmd = <<-SQL
  #{var} TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    #{vars} VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
kittens = db.execute("SELECT * FROM kittens")
kittens.each do |kitten|
  puts kitten
end

