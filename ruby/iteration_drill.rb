# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
zombie_apocalypse_supplies.each do |item|
  puts item + "*"
end

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----


def runs_pass(input)
  input.map! do |item|
  item.downcase
  end
  corrections_made = false
  (input.length - 1).times do |index|
    if input[index] > input[index+1]
      corrections_made = true
      val_0 = input[index]
      val_1 = input[index + 1]
      input[index] = val_1
      input[index + 1] = val_0
    end
  end
  return corrections_made
end

def bubble_sort(input)
  until runs_pass(input) == false
  end
  return input
end

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]
input = zombie_apocalypse_supplies
p bubble_sort(input)

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
# Define a method that iterates over an array, and checks if each item is equal to a particular string. Returns true if the item exists in the array, or false if it does not.

def search_array(array_list, particular_string)
  array_list.each do |item|
    if item == particular_string
      return true
    end
  end
end

def return_function(array_list, particular_string)
  if search_array(array_list, particular_string) == true
    return true
  else return false
  end
end

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]
array_list = zombie_apocalypse_supplies
particular_string = "batteries"
p return_function(array_list, particular_string)

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]
input = zombie_apocalypse_supplies

output = []
input.each do |item|
  if input.index(item) < 5
    output << item
  end
end
p output

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
# other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove","solar battery", "flashlight"]
# ----
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]
other_survivor_supplies = ["warm clothes", "rations", "compass", "camp stove","solar battery", "flashlight"]

other_survivor_supplies.each do |item|
  zombie_apocalypse_supplies << item
end

p zombie_apocalypse_supplies

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
output = []
extinct_animals.each do |key, value|
  output << "#{key} - #{value}"
end
puts output.join(' * ')

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
output = {}
extinct_animals.each do |key, value|
  if value < 2000
    output[key] = value
  end
end
p output

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
output = {}
extinct_animals.each do |key, value|
  output[key] = value - 3
end
p output

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

# Use .each function to iterate through the array of animals to check, extinct animals hash and check if each key is equal to the input

animals_to_check = ["Andean Cat", "Dodo", "Saiga Antelope"]

animals_to_check.each do |animal_in_question|
  is_extinct = false
  extinct_animals.each do |extinct_animal, _|
    if extinct_animal == animal_in_question
      is_extinct = true
    end
  end
  if is_extinct
    puts "#{animal_in_question} is extinct"
  else
    puts "#{animal_in_question} is NOT extinct"
  end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}
# isolates "Passenger Pigeon" key, value and returns as array
array = extinct_animals.select do |key, value|
  key == "Passenger Pigeon"
end
p array.to_a.flatten

# removes "Passenger Pigeon" key, value and returns the updated hash
extinct_animals.delete_if {|key| key == "Passenger Pigeon"}
p extinct_animals



