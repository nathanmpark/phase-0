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

def mode (array)
  count = Hash.new 0
  array.each do |item|
    count[item] += 1
  end
  max_val = count.max_by{|a,b| b}[1]

  count.select {|a,b| b == max_val}.keys

end
# 4. Reflection