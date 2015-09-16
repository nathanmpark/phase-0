# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Jupiter Baudot ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# Input list of data
# What is the output? (i.e. What should the code return?)
# Return the most common array item

# What are the steps needed to solve the problem?
# Set a counter for each list item
# loop through entire list, and increment each counter by one when it appears
# display list item with the largest counter value

# 1. Initial Solution

# def mode (array)
#   count = Hash.new 0
#   array.each do |item|
#     count[item] += 1
#   end
#   max_val = count.max_by{|a,b| b}[1]

#   count.select {|a,b| b == max_val}.keys

# end

# 3. Refactored Solution

# def mode(array)
#   count = Hash.new 0
#   array.each do |item|
#     count[item] += 1
#   end
#   max_val = count.max_by{|a,b| b}[1]
#   count.select {|a,b| b == max_val}.keys
# end

def mode(array)
  count = array.each_with_object(Hash.new(0)) { |a, b| b[a] += 1}
  max_val = count.max_by{|a,b| b}[1]
  count.select {|a,b| b == max_val}.keys
end
# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# We decided to implement a hash, largely because the key value pair can store two values at once. This came in handy when keeping track of the count of each item.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# A little more successful, but I think I need to learn to break down the code even more.

# What issues/successes did you run into when translating your pseudocode to code?
# The pseudocode can sometime simplify technically hard components of the code. It was hard moving the hash into an array, based on the max value from the key value pair.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# I used the each_with_object method to iterate through the array with the hash object. Then with each object within the array I incremented by 1 for every occurrence. It was hard to initially make sense of the each_with_object method, but once I made sense of the documentation it saved a lot of lines of code.