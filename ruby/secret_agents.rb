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
    string[our_index]=string[our_index].next!
    our_index = our_index + 1
  end
  puts string
end

puts encrypt("string")

