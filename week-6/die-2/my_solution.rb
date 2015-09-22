# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: randomly return on the strings
# Steps:
# Take in number of letters
# set sides as length of array of letter
# return randomly selected letter based on array index


# Initial Solution

# class Die
#   def initialize(labels)
#     if labels == []
#       raise ArgumentError
#     else
#       @labels = labels
#     end
#   end

#   def sides
#     @sides = @labels.length
#   end

#   def roll
#     max_val = @labels.length - 1
#     index = rand(0..max_val)
#     @labels[index]
#   end
# end

# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError unless labels != []
    @labels = labels
  end

  def sides
    @sides = @labels.length
  end

  def roll
    @labels.at(rand(0..@labels.length - 1))
  end
end

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The difference was that rather than pulling a random number through a range of numbers, you were pulling a string based on the indexes of an array. There were minor changes that had to be implemented, namely starting the random number from 0 rather than 1.

# What does this exercise teach you about making code that is easily changeable or modifiable?
# Once a class is established, you can utilize a given base code to build upon and make change based on need.

# What new methods did you learn when working on this challenge, if any?
# I learned about using the .at as a way to pull values based on index from an array, and as well learned that there were some limitations on being able to subtract from certain object variables.

# What concepts about classes were you able to solidify in this challenge?
# I was able to solidify how object variables could and could not be passed.