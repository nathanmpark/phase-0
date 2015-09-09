# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#170
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
#The last line of the file
# 6. Why did the interpreter give you this error?
#looking for an end, but could not be found

# --- error -------------------------------------------------------

def south_park
  puts "Welcome to South Park"
end

# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
#(NameError)
# 3. What additional information does the interpreter provide about this type of error?
#undefined local variable or method `south_park' for main Object
# 4. Where is the error in the code?
#in `<main>'
# 5. Why did the interpreter give you this error?
#undefined method

# --- error -------------------------------------------------------

def cartman()
  puts "Cmon KENNNEEEEEYYY"
end

# 1. What is the line number where the error occurs?
#53
# 2. What is the type of error message?
#(NoMethodError)
# 3. What additional information does the interpreter provide about this type of error?
#in `<main>'
# 4. Where is the error in the code?
#undefined method `cartman' for main Object
# 5. Why did the interpreter give you this error?
#no method error, undefined

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
#70
# 2. What is the type of error message?
#(ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#in `cartmans_phrase', from errors.rb:74:in `<main>
# 5. Why did the interpreter give you this error?
#wrong number of arguments for method

# --- error -------------------------------------------------------

def cartman_says
  puts cartmans_phrase
end

cartman_says

# 1. What is the line number where the error occurs?
#93
# 2. What is the type of error message?
#(ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#in `cartman_says', from errors.rb:93:in `<main>'
# 5. Why did the interpreter give you this error?
#wrong number of arguments for method



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
#110
# 2. What is the type of error message?
#(ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#in `cartmans_lie', from errors.rb:114:in `<main>'
# 5. Why did the interpreter give you this error?
#wrong number of arguments for method

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#129
# 2. What is the type of error message?
#(TypeError)
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
#in `*', from errors.rb:129:in `<main>'
# 5. Why did the interpreter give you this error?
#cannot multiply a number by string

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/10


# 1. What is the line number where the error occurs?
#144
# 2. What is the type of error message?
#(ZeroDivisionError)
# 3. What additional information does the interpreter provide about this type of error?
#divided by 0
# 4. Where is the error in the code?
#in `/', from errors.rb:144:in `<main>'
# 5. Why did the interpreter give you this error?
#cannot divide by zero

# --- error -------------------------------------------------------

require_relative "cartmans_essay.rb"

# 1. What is the line number where the error occurs?
#160
# 2. What is the type of error message?
#(LoadError)
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file -- /Users/nathanpark/DevBootcamp/phase-0-curriculum/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
#in `require_relative', from errors.rb:160:in `<main>'
# 5. Why did the interpreter give you this error?
#Cannot load a .md file for a require_relative, must be a .rb file


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# I think the second one was the hardest to read, because the line number went to the end of the document. So as you were searching, you had to realize that there was a problem with an end statement missing, but you had to search throughout to realize it was within the while loop at the beginning.

# How did you figure out what the issue with the error was?

# I know it was an end statement missing, but it wasn't until I took the time to realize there was a while loop that I realized there was supposed to be a nested end statement.

# Were you able to determine why each error message happened based on the code?

# Yes, the last one was a bit tricky too, in having to remember that require_relative is for .rb files.

# When you encounter errors in your future code, what process will you follow to help you debug?

# I think generally understanding the type of error messages given, and being able to research them online as needed will be helpful. In addition, having a detail oriented manner in blocking out code so you can check one section at a time will make it easier.