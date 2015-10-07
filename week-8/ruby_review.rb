# OO Basics: Student


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
# create an array of students
# array should contain 5 students
# each student should have 5 test scores associated with them
# first student should be Alex, his scores are [100,100,100,0,100]
# test scores should be between 0 and 100
# compute the average score for each student
# assign each student with a letter letter grade
# (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%)

# write a linear linear search, that searches the student array for a student's first_name and returns the position of that student if they are in the array.
# If the student is not in the array then the method should return -1.

# write a binary search, that searches the student array for a student's first_name and returns the position of that student if they are in the array.
# If the student is not in the array then the method should return -1.



# Initial Solution

# class Student
#   attr_accessor :scores, :first_name, :average, :letter_grade

#   def initialize(args)   #Use named arguments!
#     @first_name = args[:first_name]
#     @scores = args[:scores]
#     @average = @scores.inject{ |sum, n| sum + n }.to_f / 5
#     @letter_grade =
#       if @average > 89 then "A"
#         elsif @average > 79 then "B"
#         elsif @average > 69 then "C"
#         elsif @average > 59 then "D"
#         else "F"
#       end
#   end

# end

# alex = Student.new(first_name: "Alex",scores: [100,100,100,0,100])
# bill = Student.new(first_name: "Bill",scores: [90,95,85,100,92])
# cat = Student.new(first_name: "Cat",scores: [99,88,77,100,100])
# di = Student.new(first_name: "Di",scores: [98,97,96,88,99])
# earl = Student.new(first_name: "Earl",scores: [88,88,100,99,100])

# students = [alex,bill,cat,di,earl]

# def linear_search(students,name)
#   index = 0
#   answer = -1
#   while index < students.length
#     if students[index].first_name == name
#       answer = 0
#     end

#     index += 1
#   end

#   return answer
# end

# def binary_search(students, name, from=0, to=nil)
#   if linear_search(students,name) == -1
#     return -1
#   end

#   if to == nil
#       to = students.count - 1
#   end

#   mid = (from + to) / 2

#   if name < students[mid].first_name
#     return binary_search(students, name, from, mid - 1)
#   elsif name > students[mid].first_name
#     return binary_search(students, name, mid + 1, to)
#   else
#     return mid
#   end
# end

# Refactored Solution

class Student
  attr_accessor :scores, :first_name, :average, :letter_grade

  def initialize(args)   #Use named arguments!
    @first_name = args[:first_name]
    @scores = args[:scores]
    @average = @scores.inject{ |sum, n| sum + n }.to_f / 5
    @letter_grade =
      if @average > 89 then "A"
        elsif @average > 79 then "B"
        elsif @average > 69 then "C"
        elsif @average > 59 then "D"
        else "F"
      end
  end

end

alex = Student.new(first_name: "Alex",scores: [100,100,100,0,100])
bill = Student.new(first_name: "Bill",scores: [90,95,85,100,92])
cat = Student.new(first_name: "Cat",scores: [99,88,77,100,100])
di = Student.new(first_name: "Di",scores: [98,97,96,88,99])
earl = Student.new(first_name: "Earl",scores: [88,88,100,99,100])

students = [alex,bill,cat,di,earl]

def linear_search(students,name)
  index = 0
  answer = -1
  while index < students.length
    answer = 0 if students[index].first_name == name
    index += 1
  end
  return answer
end

def binary_search(students, name, from=0, to=nil)
  return -1 if linear_search(students,name) == -1

  to = students.count - 1 if to == nil

  mid = (from + to) / 2

  if name < students[mid].first_name
    return binary_search(students, name, from, mid - 1)
  elsif name > students[mid].first_name
    return binary_search(students, name, mid + 1, to)
  else
    return mid
  end
end

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

p binary_search(students, "Alex") == 0
p binary_search(students, "NOT A STUDENT") == -1

# Reflection

# What concepts did you review or learn in this challenge?
# I really got a better sense of intializiation within a class. Also, this challenge was a great reminder of the attribute accessors.

# What is still confusing to you about Ruby?
# I have a better understanding of the instantiation of objects, and putting these objects into arrays, etc. However, I am still mystified by the enumerator and how it can be manipulated.

# What are you going to study to get more prepared for Phase 1?
# I am going to try and study more about the DOM and how JavaScript actually interacts with the internet browsers.
# Also, I will try and get a better understaning of how the database relates to everything we've learned thus far.