puts "Let's register a hamster! What is the hamster's name?"
hamster_name = gets.chomp
puts "How loud is the hamster on a scale of 1 to 10,
with 10 being loudest?"
loudness = gets.chomp.to_i
puts "What is the hamster's fur color?"
fur_color = gets.chomp
puts "Is the hamster a good candidate for adoption? Answer yes or no."
adoption_candidate = gets.chomp.downcase
until adoption_candidate == "yes" || adoption_candidate == "no"
  puts "Invalid input. Please try again. Is the hamster a good candidate for adoption? Type either yes or no."
  adoption_candidate = gets.chomp.downcase
end
if adoption_candidate == "yes"
  adoption_candidate = true
elsif adoption_candidate == "no"
  adoption_candidate = false
end
puts "What is the hamster's age (approximately)?"
age = gets.chomp.to_i
if age == 0
  age = nil
end
puts "Here is the data you entered."
puts "Hamster name: #{hamster_name}"
puts "Hamster volume: #{loudness}"
puts "Hamster color: #{fur_color}"
puts "Candidate for adoption: #{adoption_candidate}"
puts "Approximate age: #{age}"
puts "Thank you for registering this hamster!"
