# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

# 0. Pseudocode
# Create method that takes in a number of sides
# define method sides to return sides
# define roll to return a random number up to the number of sides input

# Input: number of sides
# Output: randome number
# Steps: see pseudocode above

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    return rand(1..@sides)
  end
end

# 3. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError unless sides > 0
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end

# 4. Reflection
# What is an ArgumentError and why would you use one?
# ArgumentError is an exception/error message that can be raised of the input argument fails to meet certain criteria. You would raise it when the bad argument would break the method or return bad data.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# I implemented rand, which was new and also used the instance objects using the @ sign. Once I went through the readings it was fairly straight forward to implement.

# What is a Ruby class?
# A ruby class is the encapsulation of a group of objects that define similar characteristics or functions.

# Why would you use a Ruby class?
# Ruby classes are useful for combing a function or a group of functions under one umbrella object that can be used multiple times for differnt scenarios.

# What is the difference between a local variable and an instance variable?
# A local variable exists within a method and cannot be called outside of that method. An instance variable resides within a class and can be called across methods.

# Where can an instance variable be used?
# An instance variable can be defined within an object, and can be called across methods.