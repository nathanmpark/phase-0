# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

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

# When should you use instance variables? What do they do for you?

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?