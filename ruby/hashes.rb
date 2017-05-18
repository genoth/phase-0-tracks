# Create a program for interior designer to enter basic info for a given client
# Create hash client_details and assign keys with blank values.
# Print question prompting info for a given key (e.g. "What is your client's name?"
# Store user response as a value for the (key, value) pair, first converting user response to new data type if needed.
# Repeat this process for each category of information.
# Upon completion, print hash data for user review
# Print question for user, "Would you like to make any changes? If no, type none. If yes, type the category to be corrected."
# Use a conditional - if none, end the program
# If user enters a category to correct, convert it into a symbol (key)
  # Print question for user, what is the corrected data for this category?
  # Convert user input to symbol and update stored data
  # Print updated data using .each, and end program.

client_details = {
  name: "",
  age: "",
  home_type: "",
  number_of_children: "",
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
client_details[:number_of_children] = gets.chomp.to_i
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
puts "Thank you! Please review your data entry. You entered:"
client_details.each do |category, data|
  puts "#{category}: #{data}"
end
puts "Would you like to make any changes? If no, enter none. If yes, please type the category to be corrected."
category_to_correct = gets.chomp.to_sym
if category_to_correct == "none"
  puts "Thank you for entering your data! Goodbye."
else
  puts "OK! Please type the correct data for #{category_to_correct}."
  corrected_data = gets.chomp.to_sym
  client_details[category_to_correct] = corrected_data
  puts "Thank you for the correction! Here is your updated data entry."
  client_details.each do |category, data|
    puts "#{category}: #{data}"
  end
  puts "Thank you for using the design client intake system. Goodbye!"
end



