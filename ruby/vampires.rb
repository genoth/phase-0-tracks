puts "Welcome to our company! Please answer the following questions."
puts "What is your name?"
  name = gets.chomp
puts "Hi, #{name}! How old are you?"
  age = gets.chomp.to_i
puts "What year were you born?"
  birth_year = gets.chomp.to_i
puts "#{name}, our company cafeteria serves garlic bread. Should we order some for you?"
  order_bread = gets.chomp
puts "Lastly, #{name}, would you like to enroll in the company's health insurance?"
enroll_insurance = gets.chomp