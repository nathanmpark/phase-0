# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Regina Compton].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: collection of numbers
# Output: sum of numbers
# Steps to solve the problem.

# create a loop
#   create counter for index starting at zero
#     set intial sum equal to the first number
#     increment counter by one
#   close loop after iterating through entire collection

# 1. total initial solution

# def total (array)
#   len = array.length
#   index = 0
#   sum = 0
#   until index == len
#     sum += array[index]
#     index += 1
#   end
# return sum
# end

# 3. total refactored solution

def total (array)
  index = 0
  sum = 0
  until index == array.length
    sum += array[index]
    index += 1
  end
return sum
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: list of strings
# Output: capitalized sentence
# Steps to solve the problem.

# create a loop
#   create counter for index starting at zero
#     set intial sentence equal to the first string
#     increment counter by one
#   close loop after iterating through entire list
# capitalize sentence

# 5. sentence_maker initial solution

# def sentence_maker (array)
#   index = 0
#   sentence = ''
#   until index == array.length
#   sentence += array[index] + ' '
#     index += 1
#   end
# return sentence.capitalize
# end

# 6. sentence_maker refactored solution

def sentence_maker (array)
  index = 0
  sentence = ""
  array = array.map {|x| x.to_s}

until index == array.length-1
  sentence += array[index] + " "
  index += 1
end

sentence += array[-1] + "."
return sentence.capitalize

end