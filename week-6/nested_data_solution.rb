# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
p hash[:outer][:inner]["almost"][3]



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
p nested_data[:array][1][:hash]



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map!{|inner| p inner + 5}
  else
    p element + 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# pseudocode
# iterate through item withn the array
# IF string, add "ly"
# IF array, iterate through inner array
# IF string, add "ly"
# IF array, iterate through inner array
# repeat until finish
# add "ly" to end of word

def startup_names(array)
  array.map! do |item|
    if item.kind_of?(String)
      item + "ly"
    elsif
      item.kind_of?(Array)
      startup_names(item)
    end
  end
end

p startup_names(["a","b","c"])
p startup_names(["bit", ["find", "fast", ["optimize", "scope"]]])

# Reflection

# What are some general rules you can apply to nested arrays?
# Try and avoid nesting arrays past the third level, but you do use a recursive method to enter each nested array
# Enumerables are your best friend when working with arrays that you need to iterate over

# What are some ways you can iterate over nested arrays?
# Enumerables are the best way, but you can also use the .each method.
# Common enumerables are map, select, sort, etc.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# We stuck with using map, because it seemed like the cleanest way to code it, no need to add unnecessary methods.
# Kind_of was a method we used, but we've seen before, very useful for this example.