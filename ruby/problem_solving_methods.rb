# find a method that takes an array and integer
# iterate through the array, checking to see if the item equals the integer in question
# if equal, return the index (i.e. the location)

def search_array (array, integer)
  array.each_with_index do |item, index|
    if item == integer
      return index
    end
  end
end

array = [42, 89, 23, 1]
puts search_array(array, 23)


def fib(int)
  array = [0, 1]
  (int-2).times do
      next_number = array[-1] + array[-2]
      array << next_number
  end
  return array
end
p fib(8)

# Release 2 : Sort an Array

# Define a method that takes an array of numbers
# Compare the 1st and 2nd items in the array :
  # and if 1st < 2nd, leave as-is
  # otherwise switch them reverse the swap them
# Then move on to the 2nd and 3rd items in the array
  # if 2nd < 3rd, leave as-is
  # otherwise switch them/ reverse/ swap
# Then move onto the 3rd and 4th...
# Once all items have been compared, perform a check
  # If 1st < 2nd < 3rd < 4th.. (and so on) is true, you're done!
  # Otherwise, must start the process again, starting at 1st and 2nd items.
# Repeat the process until 1st < 2nd < 3rd < 4th is true

def run_pass(input)
  (input.length - 1).times do |index|
    if input[index] > input[index + 1]
      val_0 = input[index +1]
      val_1 = input[index]
      input[index] = val_0
      input[index + 1] = val_1
    end
  end
end

def bubble_sort(input)
  until input == input.sort
    run_pass(input)
    p input
  end
  return input
end

input = [9, 4, 8, 6, 2, 4, 0]
p bubble_sort(input)
