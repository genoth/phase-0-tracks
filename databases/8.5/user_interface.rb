require 'sqlite3'
require_relative 'state_government_officials'
require 'state_officials'


puts "Welcome to the state government officials database."
puts "To find information about a state's Attorney General, please type the state name."
state = gets.chomp

db.execute("SELECT officials.name, officials.position, officials.party_id, parties.name FROM officials JOIN parties ON officials.party_id = parties.id WHERE state = #{state}")