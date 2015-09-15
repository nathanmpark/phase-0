# Nathan Park & Jamie Runyan

#create a list

# separate methods:
# 1) create a new list
# 2) add an item with a quantity to the list
# 3) remove an item
# 4) update quantities for items
# 5) print list (look nice)

# Hashes will be used, keys will act as the list item and values will be the quantity

# 1) create a new list
# input: (optional)
# output: initialize a hash

# 2) add an item with a quantity to the list
# input: item, qty
# add key value pair (list[item] = qty)
# output:

# 3) remove an item
# input: string of item
# find item within list
# delete item from list
# output:

# 4) update quantities for items
# input: item, new quantity
# find item within list
# update item with new quantity
# output: print update successful

# 5) print list (look nice)
# input: list of items
# iterate through the collection
# display each item - quantity pair
# print complete list alphabetically or descending by quantity?
# output: printed list

def create_list
  Hash.new
end

def add_list(list, item, qty)
  list[item] = qty
  list
end

def remove_item (list, item)
  list.delete(item)
  list
end

def update_list (list, item, qty)
  list[item] = qty
  list
end

def print_list (list)
  list.each do |key,value|
    p key.to_s + ': ' + value.to_s
  end
end

# 1) create a new list
grocery_list = create_list
# 2) add an item with a quantity to the list
grocery_list = add_list(grocery_list, "Lemonade", 2)
grocery_list = add_list(grocery_list, "Tomatoes", 3)
grocery_list = add_list(grocery_list, "Onions", 1)
grocery_list = add_list(grocery_list, "Ice Cream", 4)

# 3) remove an item
grocery_list = remove_item(grocery_list, "Lemonade")

# 4) update quantities for items
grocery_list = update_list(grocery_list, "Ice Cream", 1)

# 5) print list
print_list (grocery_list)

# What did you learn about pseudocode from working on this challenge?
# I learned I have a long road ahead of me in terms of truly using and understanding pseudocode, especially to prep my code for any forseeable challenges in the code design. It seems as if I don't realize the issues in the code until I start coding.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# Arrays would have been easier in terms of using differnt built in ruby methods, but hashes proved useful in having key value pairs. An array of 2 item arrays could have also been possible, using the indexes to go through each item.

# What does a method return?
# A method returns the last executable expression.

# What kind of things can you pass into methods as arguments?
# You can pass arrays, hashes, integers, strings, etc.

# How can you pass information between methods?
# You can return data from a method and store it into a variable outside of the method. This variable can then be used as an input argument for another method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Solidified how to use methods to break down differnt calculations or components of code, still unsure how to use other methods within methods.