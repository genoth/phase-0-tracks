# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("kittens.db")
db.results_as_hash = true
# once we have a table we can do this to run a SQL command
# db.execute("SELECT * FROM kittens")

# learn about fancy string delimiters
create_table_cmd = <<-ANYTHING
  some string text
ANYTHING
# has to be something that won't appear in the some string text. nice to choose somthing that's explanatory, like using SQL.

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
# calling the command
db.execute(create_table_cmd)

# add a test kitten
db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")


# add LOOOOTS of kittens!
# so. many. kittens.
#KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
kittens = db.execute("SELECT * FROM kittens")
puts kittens.class
kittens.each do |kitten|
  puts "#{kitten['name']} is #{kitten['age']}"
end
