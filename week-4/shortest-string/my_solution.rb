# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  index = 0
  counter = 1
  if list_of_words == []
    return nil
  end
  until counter == list_of_words.length
    if list_of_words[index].length < list_of_words[counter].length
      counter += 1
    else
      index = counter
      counter += 1
    end
  end
  return list_of_words[index]
end