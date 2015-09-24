# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode
# first set a range of numbers to guess from
# use mid point to guess
# IF high then use old mid point as new min for the range
# IF low then use old mid point as new max for range
# repeat guessing from mid point until answer is reached

# Input:range of numbers
# Output:guess
# Steps:
# take in range of numbers
# divide max number by 2 as midpoint
# guess
# If high or low, repeat guess (by only ever guessing mid points) to determine high or low
# repeat until number is found


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#     @guess = guess
#     if @guess > @answer
#       return :high
#     elsif @guess < @answer
#       return :low
#     else
#       return :correct
#     end
#   end

#   def solved?
#     if @guess == @answer
#       return true
#     else
#       return false
#     end
#   end
# end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    return :correct unless @guess != @answer
    if @guess > @answer
      return :high
    else @guess < @answer
      return :low
    end
  end

  def solved?
    return false unless @guess == @answer
    return true
  end
end

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables are useful in that they can be utilized across methods within a class. This mirrors the characteristic of a given object in the real-world retaining its value regardless of where it might be referenced. For example, a 100 bill will always keeps its value regardless of how it is used or passed (it can be change, used to purchase items, or deposited into a bank). No matter how it is used, it retains its value.

# When should you use instance variables? What do they do for you?
# Instance variables should be used when creating a class, allowing for variables to be passed between methods. They allows for something more substantive than local variables which are limited to within the method.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control in that you can translate your logic into blocks of code, most commonly in my code as if/else statements. I didn't have any problems, just refactored some code using unless.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# It is faster and easier to use symbols, in that the machine doesn't have to translate a string and print out the statement. As a symbol, the runtime is faster and it is unique and immutable.