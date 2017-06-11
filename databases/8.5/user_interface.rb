require 'sqlite3'
require_relative './state_government_officials.rb'
db = SQLite3::Database.open("state_officials.db")

def retrieve_info(db, input)
  row = db.execute("SELECT officials.name, officials.position, parties.name FROM officials JOIN parties ON officials.party_id = parties.id WHERE state = '#{input}';").first
end

puts "Welcome to the state government officials database."
puts "To find information about a state's Attorney General, please type the state name."
state = gets.chomp

# pull row and parse data into human readable format.
row = retrieve_info(db, state)
name = row[0]
position = row[1]
party = row[2]
puts "The #{position} for #{state} is #{name}, of the #{party} party."


