# Numbers to Commas Solo Challenge

# I spent [5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# check to see if integer is greater than 999
# break down integer into an array
# determine the length of the array
# insert commas every 3 from the back

# What is the input?
# A positive integer
# What is the output? (i.e. What should the code return?)
# A comma-separated integer as a string
# What are the steps needed to solve the problem?
# break down the integer into an array
# place commas every three digits from the right
# return string value

# 1. Initial Solution
# def separate_comma(num)
#   numbers = num.to_s.split('')
#   len = numbers.length.to_f/3
#   if len <= 1
#     return num
#   else
#     answer = numbers.reverse.each_slice(3).to_a
#     answer.each do |element|
#       element << ","
#     end
#     answer.flatten.reverse.drop(1).join
#   end
# end

# 2. Refactored Solution

def separate_comma(num)
  num.to_s unless num < 1000
  num.to_s.split('').reverse.each_slice(3).to_a.each {|a| a.push(",")}.flatten.reverse.drop(1).join
end

# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# It took a while to approach the logic, but I started with the simplest problems first. Also, it took a lot of time to get the inital logic down and find ruby methods that could achieve the specific actions that I was looking for.

# Was your pseudocode effective in helping you build a successful initial solution?
#Yes the pseudocode was a good baseline for laying out the logic, but there were slight modifications that wer made - in part from new methods that were discovered will researching ruby enumerables.

# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
#There were a lot of very useful array methods and enumerables. The most difficult would have to be the each_slice and inject (which I didn't end up using). each_slice was very effective in that it broke down an array into slices of a designated amount. Thus, being able to get nested sub-arrays of three elements at a time.

# How did you initially iterate through the data structure?
# each_slice was the first method used to iterate through the data structure.

# Do you feel your refactored solution is more readable than your initial solution? Why?
#  Definitely cleaner, in that it is two lines of code, but in terms of readability maybe the same. The fact that I stringed together so many methods makes it a bit convoluted.