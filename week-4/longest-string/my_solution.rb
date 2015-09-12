# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  index = 0
  counter = 1
  if list_of_words == []
    return nil
  end
  until counter == list_of_words.length
    if list_of_words[index].length > list_of_words[counter].length
      counter += 1
    else
      index = counter
      counter += 1
    end
  end
  return list_of_words[index]
end