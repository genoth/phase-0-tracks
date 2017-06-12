require 'sqlite3'
require_relative './state_government_officials.rb'
db = SQLite3::Database.open("state_officials.db")

def retrieve_info(db, input)
  row = db.execute("SELECT officials.name, officials.position, parties.name FROM officials JOIN parties ON officials.party_id = parties.id WHERE state = '#{input}';")
end

puts "Welcome to the database on U.S. state governors and attorney generals."
puts "Please type the state name for information on its governor and attorney general."
state = gets.chomp

# pull row and parse data into human readable format.
row = retrieve_info(db, state)

result_0 = row[0]
name_0 = result_0[0]
position_0 = result_0[1]
party_0 = result_0[2]

result_1 = row[1]
name_1 = result_1[0]
position_1 = result_1[1]
party_1 = result_1[2]

puts "The #{position_0} for #{state} is #{name_0}, of the #{party_0} party."
puts "The #{position_1} for #{state} is #{name_1}, of the #{party_1} party."


