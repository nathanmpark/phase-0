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

class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    @first_name = args[:first_name]
    @scores = args[:scores]
    @average = 0
  end

  # def letter_grade()
  #   index = 0
  #   while index < @students.length
  #     if students[index].average > 89
  #       then students[index].letter_grade = "A"
  #     elsif students[index].average > 79
  #       then students[index].letter_grade = "B"
  #     elsif students[index].average > 69
  #       then students[index].letter_grade = "C"
  #     elsif students[index].average > 59
  #       then students[index].letter_grade = "D"
  #     else
  #       students[index].letter_grade = "F"
  #     end
  #   end
  # end

end

alex = Student.new(first_name: "Alex",scores: [100,100,100,0,100])
bill = Student.new(first_name: "Bill",scores: [90,95,85,100,92])
cat = Student.new(first_name: "Cat",scores: [99,88,77,100,100])
di = Student.new(first_name: "Di",scores: [98,97,96,88,99])
earl = Student.new(first_name: "Earl",scores: [88,88,100,99,100])

students = [alex,bill,cat,di,earl]

students.map do |student|
  student[:average] = student.scores.inject{ |sum, n| sum + n }.to_f / 5
end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

# p students[0].average == 80
# p students[0].letter_grade == 'B'

# Additional Tests 2:

# p linear_search(students, "Alex") == 0
# p linear_search(students, "NOT A STUDENT") == -1





# Reflection

# What concepts did you review or learn in this challenge?

# What is still confusing to you about Ruby?

# What are you going to study to get more prepared for Phase 1?
