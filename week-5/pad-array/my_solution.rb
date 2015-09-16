# Pad an Array

# I worked on this challenge [by myself, with: Rosslyn Sinclair Chin]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# Take an array, the desired length of the array, and an optional object to fill the array to the desired length.
# What is the output? (i.e. What should the code return?)
# Return an array that has been filled to the desired length with the optional filler object.

# What are the steps needed to solve the problem?
# First, find the length of the array provided.
# Then add the optional filler or nil until it reaches the desired length.

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   len = array.length
#   until len >= min_size
#     array.push(value)
#     len += 1
#   end
# array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   if array.length < min_size
#     len = min_size - array.length
#     new_array = []
#     until new_array.length == len
#       new_array.push(value)
#     end
#     new_array.unshift(array).flatten
#   else
#     array
#   end
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  array.push(value) until array.length >= min_size
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  copy = array.dup
  pad!(copy,min_size,value)
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?
# Yes, during refactoring we were able to bring the pad! function down to a couple of lines, and in doing so was able to re-utilize this method again in pad.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#This was a rather straight forward input and output method, so we were able to translate the pseudocode to code easily.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#Our initial solution for pad! worked seamlessly, but our second solution for pad method failed because it was still destructive. We were able to get around this by using the built in dup method.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
#Yes, the .push and .dup method were very useful in cleaning up our code.

# How readable is your solution? Did you and your pair choose descriptive variable names?
#They mainly follow the naming of the arguments.

# What is the difference between destructive and non-destructive methods in your own words?
#The difference is in whether or not the original object has been changed permanently.