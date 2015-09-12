# Factorial

# I worked on this challenge [by myself, with: Regina Compton].

# create a counter
# create a loop
#   multiply that counter by one less than itself
#   decrease counter by one
# end loop when counter reaches zero
# return number

#Your Solution Below
def factorial(num)
  if num == 0
    return 1
  else
    value = num - 1
    until value == 0
      num *= value
      value -= 1
    end
    return num
  end
end