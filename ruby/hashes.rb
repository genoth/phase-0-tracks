# Program for interior designer, to enter client details
# Create hash client_details and assign keys.
# Print question prompting info for a given key, convert user response to new data type if needed, and store user response as value for (key, value) pair
# Repeat this process until all client details have been received.
# Upon completion, print "you have entered the following data" + hash
# Print question for user, "is this data correct? yes or no"

client_details = {
  name: "",
  age: "",
  home_type: "",
  num_of_children: "",
  decor_style: "",
  zip_code: "",
  wants_kitchen_remodel: "",
}
puts "Hello! Welcome to the design client intake system."
puts "What is your client's full name?"
client_details[:name] = gets.chomp
puts "What is your client's age?"
client_details[:age] = gets.chomp
puts "What type of home does your client have? e.g. apartment, ranch, colonial, duplex, house"
client_details[:home_type] = gets.chomp
puts "How many children does your client have?"
client_details[:num_of_children] = gets.chomp.to_i
puts "How would you describe your client's decor style? (e.g. modern, glam, rustic, traditional)"
client_details[:decor_style] = gets.chomp
puts "What is your client's zip code?"
client_details[:zip_code] = gets.chomp.to_i
puts "Is your client interested in a kitchen remodel?"
client_details[:wants_kitchen_remodel] = gets.chomp
if client_details[:wants_kitchen_remodel] == "yes"
  client_details[:wants_kitchen_remodel] = true
elsif client_details[:wants_kitchen_remodel] == "no"
  client_details[:wants_kitchen_remodel] = false
end
p client_details