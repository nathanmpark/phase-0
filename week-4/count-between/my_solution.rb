# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)

  if list_of_integers == [] || upper_bound < lower_bound
    return 0
  elsif list_of_integers[0] < lower_bound
    list_of_integers.shift until list_of_integers[0] >= lower_bound
  elsif list_of_integers[-1] > upper_bound
    list_of_integers.pop until list_of_integers[-1] <= upper_bound
  end

  return list_of_integers.length
end