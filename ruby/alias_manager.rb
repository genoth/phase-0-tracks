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


def letter_array(name)
  names_swapped = name.downcase.split(' ').reverse
  spaces_to_add = (names_swapped.length - 1)
  names_swapped = names_swapped.insert(spaces_to_add, " ")
  array_of_chars = names_swapped.join.chars
end

def letter_encryptor(name)
  target_array = letter_array(name)
  vowel_key = "aeiou".chars
    consonant_key = "abcdefghijklmnopqrstuvwxyz"
    consonant_key = consonant_key.delete("aeiou")
    consonant_key = consonant_key.chars
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
  separated_names.map! do |item|
    item.to_s.capitalize
  end
  separated_names.map! do |item|
    item.insert(0, " ")
  end
  def join_items(item)
    item.join
  end
  item = separated_names
  output = join_items(item)
  output = output.slice(1,output.length)
end

p aliasinator("Felicia Torres")




# can we turn the result into an array?

# run letter cryptometer on each item of the array
# return new array of alias names ["vussit", "gimodoe"]
# print array items as strings with spaces in between, and capitalize