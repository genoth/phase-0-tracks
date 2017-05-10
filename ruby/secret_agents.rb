# write a method that takes a
# string as an argument
# use .length and string indexes
# to advance each
# character 1 letter forward using .next
# prints the altered string
# input "string" would return "tusjoh"

# Do the thing -
# 1.
def encrypt(string)
  our_index=0
  while our_index < string.length do
    if string[our_index] == "z"
      string[our_index]=string[our_index].next!.chop
    else
      string[our_index]=string[our_index].next!
    end
    our_index = our_index + 1
  end
  p string
end

# 2.
# Takes an encrypted string as an argument
# Use .index on a letter in our encrypted string
# Take that index and apply it to the alphabet string
# our "key" is the alphabet
# decrypt by retracting by 1 letter for each character, using our key
# returns the decrypted string

def decrypt(string)
  our_index = 0
  key = "abcdefghijklmnopqrstuvwxyz"
  while our_index < string.length do
    string[our_index] = key[key.index(string[our_index]) - 1]
    our_index = our_index + 1
  end
  p string
end

# decrypt("tusjoh")

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

# decrypt(encrypt("swordfish"))
# Release 4
# This nested method call works because it is asking to encrypt "swordfish." Encrypt returns a string that decrypt reads. The result is that the original string is returned.

# Release 5
# Print question to ask user if they'd like to use the decrypt or encrypt method.
# use gets.chomp to take the user input
# Ask user for the word they want us to encrypt or decrypt.
# Perform the operation and print the result, then say thank you for using the cryptometer!

puts "Hello Agent! Would you like to use the encrypt method, or the decrypt method? Please type encrypt or decrypt."
method = gets.chomp
until method == "encrypt" || "decrypt"
  puts "Invalid input. Please try again. Type either encrypt or decrypt."
  method = gets.chomp
end
puts "What word would you like to use?"
  string = gets.chomp
if method == "encrypt"
  encrypt(string)
else decrypt(string)
end




