#Attr Methods

# I worked on this challenge [by myself]

# I spent [3] hours on this challenge.

class NameData

  attr_accessor :name

  def initialize
    @name = "Nathan"
  end

end


class Greetings

  attr_accessor :name

  def intialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello Student! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello

# Reflection

# Release 1
# What are these methods doing?
# The methods are acting as getters and setters. They are assigning values to instance variables

# How are they modifying or returning the value of instance variables?
# There are a series of different methods used to set the instance variables. Any changing methods simply reuse the same instance variable to change the set values.

# Release 2
# What changed between the last release and this release?
# The use of the attr_reader has replaced the need for the what_is_age getter method.

# What was replaced?
# The what_is_age method was replaced.

# Is this code simpler than the last?
# Yes, very much so. And in addition uses a symbol.

# Release 3
# What changed between the last release and this release?
# The addition of the attr_writer to replace the change_my_age= setter method.

# What was replaced?
# The change_my_age= method was replaced.

# Is this code simpler than the last?
# Yes definitely simpler in that it removed an entire method.

# Release 5
# What is a reader method?
# A reader method is often times the intialize method as your are passing in a argument, that is being read by the method and being assigned to an instance variable.

# What is a writer method?
# A writer method is usually the method that changes the value of the initialize method or updates the initial value of an instance variable. It "writes" over previous values.

# What do the attr methods do for you?
# The attr methods are effectively a substitute for the reader and writer methods. It references symbols, which equate to the instance variables as long as they have the same name. attr_writer is equivalent to the writer method and attr_reader is equivalent to the reader method. attr_accessor allows for both read and write permission.

# Should you always use an accessor to cover your bases? Why or Why not?
# You should not always use attr_accessor as there may be some instance variables that should only act as readers or getters. By using the differnt accessor types accordingly, you also create inherent security and limit the code to its specific use case.

# What is confusing to you about these methods?
# Nothing is too confusing, just trying to explore the more use cases of cross communication across classes.