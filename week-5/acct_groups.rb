# Create Accountability Groups

# Pseudocode
# take a list of names and
# takes input of minimum number of people you would like in a group (3,4, or 5)
# based on n, returns groups of names
# if remainder is 1 or 2, then the last two groups will be (n+(1 or 2))/2

# Bonus: make the group random, spread out equally based on gender, age, location
#If you run this program three times in a row, will the program give you three different outputs?
# Should the program store past outputs?
# If one person were to leave the cohort, how would the accountability groups change?
# How do you decide when you're done? You'll need to decide. This is much more challenging than you probably think, especially since there are no pre-written tests.

def acct_groups(names)
  if names.length%4 > 2
    names.shuffle.each_slice(4).to_a
  elsif names.length%4 > 0
    x = names.shuffle.each_slice(3).to_a
    x[0..-3] + [(x[-2]+x[-1])]
  end
end

p acct_groups(["a","b","c","d","e","1","2","3","4","1","1","s","a","t"])#,"r","16","17"])

# Reflection
# What was the most interesting and most difficult part of this challenge?
# Them most intersting part of this challenge was trying to figure out the logic, and the most difficult was properly testing the method.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# I feel that my pseudocode is getting better, and I am able to break down loops or functions to its core.

# Was your approach for automating this task a good solution? What could have made it even better?
# I believe it is a good solution, especially as the group gets larger. It could have been made better if you could automate the input of names into the method, by some database call.

# What data structure did you decide to store the accountability groups in and why?
# I kept them stored in nested arrays, so that each index would hold an array/group of 3-5. And in this way the groups are kept together in one unified list.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I leared a little bit about the way I code, my inital solution always assign variables to lengths or comparison values, and when cleaning up I realize I can code them directly into the solution.