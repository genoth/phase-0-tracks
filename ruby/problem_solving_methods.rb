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
