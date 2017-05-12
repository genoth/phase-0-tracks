puts "Hello! How many employees will be processed today?"
employees = gets.chomp.to_i
employees_processed = 0
until employees_processed == employees
  puts "Welcome to our company! Please answer the following questions."
  puts "What is your name?"
  name = gets.chomp
  puts "Hi, #{name}! How old are you?"
  years_old = gets.chomp.to_i
  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  if birth_year + years_old == 2016 || birth_year + years_old == 2017
    age = true
  end
  puts "#{name}, our company cafeteria serves garlic bread. Should we order some for you? Please answer yes or no."
  if gets.chomp.downcase == "yes"
    wants_bread = true
  end
  puts "#{name}, would you like to enroll in the company's health insurance? Please answer yes or no."
  if gets.chomp.downcase == "yes"
    wants_insurance = true
  end
  allergies = ""
  until allergies == "done" || allergies == "sunshine"
    puts "Please name your allergies one at a time. When you are finished, type done. (If you have no allergies, you can just type done.)"
    allergies = gets.chomp.downcase
  end
  if allergies == "sunshine"
    allergies = "done"
    result = "Probably a vampire!"
  else
    if age && (wants_bread || wants_insurance)
      result = "Probably not a vampire."
    end
    if !age && (!wants_bread || !wants_insurance)
      result = "Probably a vampire!"
    end
    if !age && !wants_bread && !wants_insurance
      result = "Almost certainly a vampire!"
    end
    if name.downcase == "drake cula"
      result = "DEFINITELY a vampire."
    end
    if name.downcase == "tu fang"
      result = "DEFINITELY a vampire."
    end
  end
  puts result
  employees_processed = employees_processed + 1
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."