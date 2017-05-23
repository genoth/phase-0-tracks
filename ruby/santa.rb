class Santa

  def initialize
  puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

end

# DRIVER CODE
mall_santa = Santa.new
mall_santa.speak
mall_santa.eat_milk_and_cookies("sugar cookie")

