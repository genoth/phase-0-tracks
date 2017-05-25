# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza") (.split)
# steps:
  # [fill in any steps here] grocery_list = {}
  # set default quantity = 1
  # print the list to the console [can you use one of your other methods here?] grocery_list.each
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: grocery_list[:item] = ""
# output: p grocery_list[:item]

# Method to remove an item from the list
# input: grocery_list.delete("item")
# steps: grocery_list.delete("item")
# output: p grocery_list

# Method to update the quantity of an item
# input: grocery_list[:item] = quantity
# steps:
# output: print key-value pair of item

# Method to print a list and make it look pretty
# input: .each
# steps: capitalize and maybe print as string
# output: print hash, make it look nice using each_pair, or quantity then items


def make_list(grocs)
  groceries = grocs.split(' ')
  grocery_list = {}
  groceries.each { |x| grocery_list[x] = "" }
  grocery_list
end

def add_item(list, groc)
  list[groc] = ""
  list
end

def delete_item(list, groc)
  if list.include?(groc)
    list.delete(groc)
  else puts "#{groc.capitalize} is not on your list. Please try again."
  end
  list
end

def update_quantity(list, groc, quant)
  if list.include?(groc)
    list[groc] = quant.to_i
  else puts "#{groc.capitalize} is not on your list. Please try again."
  end
  list
end

def print_list(list)
  list.each { |groc, quant| puts "We have to buy #{quant} #{groc}."}
end


grocery_list = make_list("carrots apples chickens pizzas")
add_item(grocery_list, 'chocolates')
delete_item(grocery_list, 'bananas')
update_quantity(grocery_list, 'potatoes', 8)
update_quantity(grocery_list, 'pizzas', 8)
update_quantity(grocery_list, 'apples', 5)
update_quantity(grocery_list, 'chickens', 2)
update_quantity(grocery_list, 'chocolates', 75)
print_list(grocery_list)

 grocery_list = make_list('lemonade tomatoes onions ice-cream')
 update_quantity(grocery_list, 'lemonade', 2)
 update_quantity(grocery_list, 'tomatoes', 3)
 update_quantity(grocery_list, 'onions', 1)
 update_quantity(grocery_list, 'ice-cream', 4)
 delete_item(grocery_list, 'lemonade')
 update_quantity(grocery_list, 'ice-cream', 1)
 print_list(grocery_list)
