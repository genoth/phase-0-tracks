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

puts vowel_key
puts vowel_key[1]
puts vowel_key.index("e")

puts vowel_key.index(target[1])
target.each do {|word| puts letter.index}

