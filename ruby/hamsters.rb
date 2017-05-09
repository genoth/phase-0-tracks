puts "What is the hamster's name?"
hamster_name = gets.chomp
puts "How loud is the hamster on a scale of 1 to 10, with 10 being loudest?"
loudness = gets.chomp.to_i
puts "What is the hamster's fur color?"
fur_color = gets.chomp
puts "Is the hamster a good candidate for adoption? Answer yes or no."
adoption = gets.chomp
if adoption == ""
  adoption = "nil"
end
puts "What is the hamster's age (approximately)?"
age = gets.chomp.to_i
if age == ""
  age = "nil"
end
