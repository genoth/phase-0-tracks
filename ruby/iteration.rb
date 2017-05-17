# Release 0
  def whats_for_dinner
  puts "It's almost dinnertime."
  yield("steak", "potatoes")
  puts "I hope it's delicious!"
end

whats_for_dinner { |dish1, dish2| puts "For dinner tonight, we're having #{dish1} and #{dish2}!" }

# Release 1
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

