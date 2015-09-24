# Your Names
# 1) Nathan Park
# 2) Eunice Choi

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

# Initial Solution
# def serving_size_calc(item_to_make, order_quantity)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   # Hash containing 3 food items as keys , and service sizes as values
#   error_counter = 3
#   # initialize error_counter with 3

#   library.each do |food| #Iterate through each key,value pair
#     if library[food] != library[item_to_make] #Make sure item_to_make is inside library hash
#       p error_counter += -1 #decrease counter by one for each element that is inside library hash
#     end
#   end

#   if error_counter > 0 #once counter hits 0, no error
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   serving_size = library.values_at(item_to_make)[0]
#   # return array of values from hash, [0] is first item of array

#   serving_size_mod = order_quantity % serving_size
#   #Calculate mod if order_quantity is greater than serving size, else 0

#   #enter this case statement
#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}" #When there are no leftovers, create n number of food item
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover serving. Suggested baking items: TODO: MAKE THIS FEATURE" #When there are leftovers, Make the rounded down number of order_quantity. You have the remainder number of leftover servings.
#   end
# end

# Refactored
def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError, "#{item_to_make} is not a valid input" unless menu.has_key?(item_to_make)


  serving_size = menu[item_to_make]
  leftovers = order_quantity % serving_size > 0

  if order_quantity < serving_size
    return "Make 1 of #{item_to_make}, you have #{serving_size - order_quantity} extra servings"

  elsif leftovers
    return "Make #{(order_quantity/serving_size) + 1} of #{item_to_make}, you have #{serving_size - (order_quantity - serving_size)} leftover serving."

  else
    return "Make #{order_quantity/serving_size} of #{item_to_make}" #When there are no leftovers, create n number of food item
  end
end

p serving_size_calc("pie", 6)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# We got some great tips from our guide regarding the readibility of our code, using methods that help with making it sound more like colloquial english, and also using meaningful variables names so that they are informative within the code.

# Did you learn any new methods? What did you learn about them?
# Did not learn about any new methods, but used has_key? method in order to search for valid keys within the hash.

# What did you learn about accessing data in hashes?
# It is fastest to access data/values in hashes using the keys

# What concepts were solidified when working through this challenge?
# The importance of clean and easy to read code was very solidified. Also the fact that debugging requires time as you break down code, parse what it's actually doing, and then diagnosing if you can refactor it.
