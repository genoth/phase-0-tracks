# Release 0
# The Alias problem will require 3 methods

# 1 Letter Array method
# Write a method that takes a full name as a string, makes all the letters lowercase, turns each name into an item of an array, and reverses the two items to form a new array (last name, first name), and then returns an array of all the characters of that array.

# 2 Encrypt Each Letter in the Array method
# Write a method that establishes a vowel key and a consonant key, takes an array of characters, and checks if each one is a vowel, consonant, or space and then replaces the chracter with the next vowel in the key, next consonant in the key, or a space, respectively, based on the type. Edge cases will be "u" and "z". We can use a conditional to check for edge cases and return "a" and "b", respectively, for these edge cases. Returns a new character array.

# 3
# Create a method that takes a character array, joins the characters, and then splits them into 2 array items by using the space in between. Then, turns each array item into a string, and capitalizes each string. Then, adds a space before each item in the array. Then, adds a space before each string, and then joins the 2 strings. Then, removes the space before the first name.

# puts "Thank you for using the aliasinator! Tell us your name and we'll find you an alias."

def letter_array(name)
  names_swapped = name.downcase.split(' ').reverse
  array_of_chars = names_swapped.join(' ').chars
end

def letter_encryptor(name)
  vowel_key = "aeiou".chars
  consonant_key = "abcdefghijklmnopqrstuvwxyz"
  consonant_key = consonant_key.delete("aeiou")
  consonant_key = consonant_key.chars
  target_array = letter_array(name)
  target_array.map! do |letter|
    if vowel_key.include?(letter)
      if vowel_key == "u"
        new_letter = "a"
      else
        location = vowel_key.index(letter)
        new_letter = vowel_key[location + 1]
      end
    elsif consonant_key.include?(letter)
      if consonant_key == "z"
        new_letter = "b"
      else
        location = consonant_key.index(letter)
        new_letter = consonant_key[location + 1]
      end
    else new_letter = " "
    end
  end
end

def aliasinator(name)
  array = letter_encryptor(name)
  string = array.join
  separated_names = string.split(' ')
  capitalized_names = separated_names.map do |item|
    item.to_s.capitalize
  end
  output = capitalized_names.join(' ')
end

puts "Hello! Welcome to the aliasinator. Please enter a name and we'll give you an alias!"
name = gets.chomp
puts "Your alias for #{name} is #{aliasinator(name)}. Press any key to continue using the aliasinator. If you're done, just type quit."
while gets.chomp != "quit"
  puts "Please enter a name and we'll give you an alias!"
  name = gets.chomp
  puts "Your alias is #{aliasinator(name)}. Press any key to continue using the aliasinator. If you're done, just type quit."
end
puts "Thank you. Goodbye!"



