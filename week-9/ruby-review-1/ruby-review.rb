# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# Pseudocode
# create fibonnaci sequence within an array
# create each value by adding the previous two values
# start with the number 1
# use two counters, one for the value of 1 and another withint eh position of zero
# iterate through creating the fibonacci sequence
# until you reach a number equal or more than the number in question
# if the number is a fibonacci number return true
# else return false


# Initial Solution

# def is_fibonacci?(num)
#   array = [1]
#   i = 0
#   j = 1
#   array << j

#   until array[j] >= num
#     array << array[i]+array[j]
#     i += 1
#     j += 1
#   end

#   if array[-1] == num
#     return true
#   else
#     return false
#   end
# end

# Refactored Solution

def is_fibonacci?(num)
  array = [0]
  i = 0
  j = 1
  array << j

  until array[j] >= num
    array << array[i]+array[j]
    i += 1
    j += 1
  end

  if array[-1] == num
    return true
  else
    return false
  end
end

# Reflection:
# What concepts did you review in this challenge?
# I was able to review the concepts of looping, control flow, and iterating through arrays.

# What is still confusing to you about Ruby?
# I think I will need to spend more time reviewing the different methods.

# What are you going to study to get more prepared for Phase 1?
# I am going to study more of the Ruby Classes, as well as the JavaScript constructors.
# I also want to spend more time exploring jquery and the DOM in JavaScript.