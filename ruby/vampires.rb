puts "Welcome to our company! Please answer the following questions."
puts "What is your name?"
name = gets.chomp
puts "Hi, #{name}! How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp.to_i
puts "#{name}, our company cafeteria serves garlic bread. Should we order some for you?"
wants_bread = gets.chomp
puts "Lastly, #{name}, would you like to enroll in the company's health insurance?"
wants_insurance = gets.chomp

if (birth_year + age == 2016 || birth_year + age == 2017) && wants_bread == "yes" || wants_insurance == "yes"
result = "Probably not a vampire."
end

