# Full name greeting
puts "What is your first name?"
first_name = gets.chomp.capitalize

puts "What is your middle name?"
middle_name = gets.chomp.capitalize

puts "What is your last name?"
last_name = gets.chomp.capitalize

puts "Your full name is " + first_name + " " + middle_name  + " " + last_name

puts

#Bigger, better favorite number
puts "What is your favorite number?"
num = gets.chomp
num = num.to_i + 1
puts "Your new favorite number is " + num.to_s

=begin
How do you define a local variable?
  A local variable is assigned using the "=" sign. You can assign a variable a number or a string.

How do you define a method?
  A [method](./define-method/my_solution.rb) is a local function, which runs a series of operations upon input variables.

What is the difference between a local variable and a method?
  A variable stores a value, while a method will operate some sort of function.

How do you run a ruby program from the command line?
  By writing "ruby [file.rb]".

How do you run an RSpec file from the command line?
  By writing "rspec [file_spec.rb]".

What was confusing about this material? What made sense?
  There was a portion of the material that was confusing when taking in a number as a string, converting it to an integer to perform basic math functions, then returning it to a string to print out to the console. What made sense were the built in methods and the syntax of ruby methods that make sense like ".length".
=end