# write a method that takes a
# string as an argument
# use .length and string indexes
# to advance each
# character 1 letter forward using .next
# prints the altered string
# input "string" would return "tusjoh"

# Do the thing -
# 1.
def encrypt(word)
  current_index = 0
  while current_index < word.length do
    if word[current_index] == "z"
      word[current_index] = "a"
    elsif word[current_index] == " "
      word[current_index] = " "
    else
      word[current_index] = word[current_index].next!
    end
    current_index = current_index + 1
  end
  p word
end

# 2.
# Takes an encrypted string as an argument
# Use .index on a letter in our encrypted string
# Take that index and apply it to the alphabet string
# our "key" is the alphabet
# decrypt by retracting by 1 letter for each character, using our key
# returns the decrypted string

def decrypt(word)
  current_index = 0
  key = "abcdefghijklmnopqrstuvwxyz"
  while current_index < word.length do
    letter = word[current_index]
    location = key.index(letter)
    if location != nil
      word[current_index] = key[location - 1]
    end
    current_index = current_index + 1
  end
  p word
end

# decrypt("tusjoh")

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# decrypt(encrypt("swordfish"))
# Release 4
# This nested method call works because it is asking to encrypt "swordfish." Encrypt returns a string that decrypt reads and decrypts. The result is that the original string is returned.

# Release 5
# Print question to ask user if they'd like to use the decrypt or encrypt method.
# use gets.chomp to take the user input
# Ask user for the word they want us to encrypt or decrypt.
# Perform the operation and print the result, then say thank you for using the cryptometer!

puts "Hello Agent! Would you like to use the encrypt method, or the decrypt method? Please type encrypt or decrypt."
method = gets.chomp.downcase
until method == "encrypt" || method == "decrypt"
  puts "Invalid input. Please try again. Type either encrypt or decrypt."
  method = gets.chomp.downcase
end
puts "What word would you like to use?"
word = gets.chomp
if method == "encrypt"
  encrypt(word)
else decrypt(word)
end
puts "Thank you for using the cryptometer! Goodbye."




