puts "Welcome to our company! Please answer the following questions."
puts "What is your name?"
  name = gets.chomp
puts "Hi, #{name}! How old are you?"
  years_old = gets.chomp.to_i
puts "What year were you born?"
  birth_year = gets.chomp.to_i
if birth_year + years_old == 2016 || birth_year + years_old == 2017
  age = TRUE
end
puts "#{name}, our company cafeteria serves garlic bread. Should we order some for you? Please answer yes or no."
if gets.chomp == "yes"
  wants_bread = TRUE
end
puts "Lastly, #{name}, would you like to enroll in the company's health insurance? Please answer yes or no."
if gets.chomp == "yes"
wants_insurance = TRUE
end

if age && (wants_bread || wants_insurance)
  result = "Probably not a vampire."
  puts result
end
