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
  puts string
end

puts encrypt("string")


# 2.
# Takes an encrypted string as an argument
# Use .index on a letter in our encrypted string
# Take that index and apply it to the alphabet string
# our "key" is the alphabet
# decrypt by retracting by 1 letter for each character, using our key
# returns the decrypted string

def decrypt(tusjoh)
  our_index = 0
  key = "abcdefghijklmnopqrstuvwxyz"
  while our_index < tusjoh.length do
    tusjoh[our_index] = key[key.index(tusjoh[our_index]) - 1]
    our_index = our_index + 1
  end
  puts tusjoh
end

decrypt("tusjoh")

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
