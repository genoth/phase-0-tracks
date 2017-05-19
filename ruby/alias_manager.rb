# Release 0
# Write a method that takes a full name as a string
# Use .split and .reverse to swap first and last name
# Create vowel key (alphabetized string of vowels aeiou)
# Define next_vowel method
# Create consonant key (alphabetized string of all consonants in the alphabet)
# Use .delete to remove vowels and update consonant key
# Use .split to convert both vowel and consonant keys to arrays?
# Use .downcase to account for uppercase letters and use .capitalize to convert back to proper case
# Write a method that checks to see if a letter in name_array exists in consonant_key_array, and if it does, returns the .next value from consonant_key_array. It not, returns the .next value from vowel_key_array, else returns " ".

consonant_key = "abcdefghijklmnopqrstuvwxyz"
consonant_key = consonant_key.delete("aeiou")
consonant_key = consonant_key.chars
# => ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

vowel_key = "aeiou".chars
# => ["a", "e", "i", "o", "u"]

# puts vowel_key
# puts vowel_key[1]
# puts vowel_key.index("e")


# puts vowel_key.index(target[1])
# target.each do {|word| puts letter.index}


# if vowel_key.include?(target[1])
#  location = vowel_key.index((target[1]))
#  puts location
# end

# puts "Thank you for using the aliasinator! Tell us your name and we'll find you an alias."


# puts vowel_encryptor("o")

def vowel_encryptor(vowel)
  vowel_key = "aeiou".chars
  letter = vowel
  location = vowel_key.index(letter)
  new_letter = vowel_key[location + 1]
end

def consonant_encryptor(consonant)
  consonant_key = "abcdefghijklmnopqrstuvwxyz"
  consonant_key = consonant_key.delete("aeiou")
  consonant_key = consonant_key.chars
  letter = consonant
  location = consonant_key.index(letter)
  new_letter = consonant_key[location + 1]
end

puts vowel_encryptor("i")
puts consonant_encryptor("g")

def letter_cryptometer(target_array)
  target_array.each_index do |index|
    vowel_key = "aeiou".chars
    consonant_key = "abcdefghijklmnopqrstuvwxyz"
    consonant_key = consonant_key.delete("aeiou")
    consonant_key = consonant_key.chars
    letter = target_array[index]
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
  p new_letter
  end
end



name_array = "Felicia Torres".downcase.split(' ').reverse
name_array = name_array.insert(1, " ")
puts "name array is #{name_array} and has the class #{name_array.class}"
example_array = name_array.join.chars
puts "target array is #{example_array}"
puts "target array has the class #{example_array.class}"
new_array = letter_cryptometer(example_array)

target_array = ["hello", "goodbye", "hi there"]

target_array.each_index do |index|
  puts target_array[index]
end

target_array.each_index do |index|
  puts target_array.index("hello")
end

# can we turn the result into an array?

# run letter cryptometer on each item of the array
# return new array of alias names ["vussit", "gimodoe"]
# print array items as strings with spaces in between, and capitalize