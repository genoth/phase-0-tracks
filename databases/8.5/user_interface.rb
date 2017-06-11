require 'sqlite3'
require_relative './state_government_officials.rb'
db = SQLite3::Database.open("state_officials.db")

####################
# explore ORM by retrieving data

## experiment with format of printed data
def retrieve_info(db, input)
  name = (db.execute("SELECT officials.name FROM officials WHERE state = '#{input}';")).first.first
  party = (db.execute("SELECT parties.name FROM officials JOIN parties ON officials.party_id = parties.id WHERE state = '#{input}';")).first.first
  puts "The attorney general for #{input} is #{name}, of the #{party} party."
end
    # officials.position, parties.name FROM officials JOIN parties ON officials.party_id = parties.id WHERE state = '#{input}';")


### THIS WORKS!
# def retrieve_info(db, input)
#   db.execute("SELECT officials.name, officials.position, parties.name FROM officials JOIN parties ON officials.party_id = parties.id WHERE state = '#{input}';")
# end
puts "Welcome to the state government officials database."
puts "To find information about a state's Attorney General, please type the state name."
state = gets.chomp

# puts db.execute("SELECT * FROM officials")

puts retrieve_info(db, state)


# officials = db.execute("SELECT officials.*, officials.name, officials.position, officials.party_id, parties.name WHERE state = #{input}")
#   puts "#{officials['name']} is #{officials['position']} for the state of #{officials['state']}."

# retrieve_data_cmd = <<-SQL
# SELECT officials.*, parties.name FROM officials INNER JOIN parties ON officials.party_id = parties.id WHERE officials.state = "Illinois"
# )
# # SQL

# db.execute(retrieve_data_cmd)

