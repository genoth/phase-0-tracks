########## Release 0 ############
def whats_for_dinner
  puts "It's almost dinnertime."
  yield("steak", "potatoes")
  puts "I hope it's delicious!"
end

whats_for_dinner { |dish1, dish2| puts "For dinner tonight, we're having #{dish1} and #{dish2}!" }

########### Release 1 #############

# 1
# array days_of_week
days_of_week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
# hash dinner_schedule
dinner_schedule = {
  monday: "steak and potatoes",
  tuesday: "tacos",
  wednesday: "tuna casserole",
  thursday: "vegetable lasagne",
  friday: "pizza"
}

# 2
# iterate through array with .each
puts "Exercise: Iterate through days_of_week array with .each. Original array is:"
p days_of_week

days_of_week.each do |day|
  p "I work on #{day}."
end

puts "After the .each call, the array is:"
p days_of_week

# iterate through array with .map!
puts "Exercise: Iterate through days_of_week array with .map! Original array is:"
p days_of_week

days_of_week.map! {|day| p day + " is the best day!"}

puts "After the .map! call, array is:"
p days_of_week

# iterate through hash with .each
puts "Exercise: Iterate through hash with .each. Original hash is:"
p dinner_schedule

dinner_schedule.each {|day, dinner| p "On #{day.upcase}, dinner will be #{dinner}."}

puts "After the .each call, hash is:"
p dinner_schedule

############ RELEASE 2 ###########
# Array
number_array = [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40]
number_hash = {
  1 => "odd",
  2 => "even",
  3 => "odd",
  4 => "even",
  5 => "odd",
  6 => "even",
  7 => "odd",
  8 => "even",
  9 => "odd",
  10 => "even",
  11 => "odd",
  12 => "even",
  13 => "odd",
  14 => "even",
  15 => "odd"
}
puts "Original array is #{number_array}"
puts "Original hash is #{number_hash}"

#1 - A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

number_array.delete_if {|number| number < 18}
p number_array

# Hash
number_hash.delete_if {|number, type| number < 3}
p number_hash

#2 - A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

# Array
number_array.keep_if {|number| number.even?}
p number_array

# Hash
number_hash.keep_if {|number, type| type == "odd"}
p number_hash

#3 - A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

# Array
number_array.select! {|number| number % 3 == 0}
p number_array

# Hash
number_hash.select! {|number| number % 3 == 0}
p number_hash

#4 - A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

# Array
# Removes items from array until condition evaluates as false, and then stops.
# I created a new variable to store the resulting array.
new_number_array = number_array.take_while {|number| number <= 25}
p new_number_array

# Hash
# Removes items from hash until condition evaluates as false, and then stops.
# I created a new variable to store the resulting hash.
new_number_hash = number_hash.take_while {|number, type|number <= 8}
p new_number_hash


