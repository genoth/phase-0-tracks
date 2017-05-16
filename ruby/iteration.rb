def whats_for_dinner
  puts "It's almost dinnertime."
  yield("steak", "potatoes")
  puts "I hope it's delicious!"
end

whats_for_dinner { |dish1, dish2| puts "For dinner tonight, we're having #{dish1} and #{dish2}!" }