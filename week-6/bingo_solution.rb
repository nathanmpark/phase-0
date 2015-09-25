# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

 # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# Create a method to generate a letter and a number
# use the random method to generate a letter (b,i,n,g,o)
# also create a random number 1-100
# concatenate the two into a string

# Check the called column for the number called.
# create a method to check the column for the number called
# parse out the first letter of the random letter and number
# based on the letter/key, return a value for the related index value within the array/bingo board
# check to see if that index position has an element equal to the number called
# compare across the entire board/all 5 arrays

# If the number is in the column, replace with an 'x'
# if the number exists replace it with an 'X'
# use the index number to check where in th array the number resides
# replace the number with the 'X'

# Display a column to the console
# Not sure why we have to display a column, but to do so, simply puts the values from the array at a given index

# Display the board to the console (prettily)
# Puts the arrays in succession onto the console,
# this makes sure that they are lined up in the fashion of a bingo board.

# Initial Solution

# require 'pp'

# class BingoBoard

#   attr_reader :letter, :number, :pick, :board_space

#   def initialize(board)
#     @bingo_board = board
#     @board_space = {
#       "b" => 0,
#       "i" => 1,
#       "n" => 2,
#       "g" => 3,
#       "o" => 4
#     }
#   end

#   def call
#     @letter = ["b","i","n","g","o"].sample
#     @number = rand(1..100)
#     @pick = letter + number.to_s
#   end

#   def check
#     @bingo_board.each do |line|
#       if line[@board_space[@letter]] == @number
#         line[@board_space[@letter]] = 'X'
#       end
#     end

#     pp @bingo_board
#   end

# end

# Refactored Solution

require 'pp'

class BingoBoard

  attr_reader :letter, :number

  def initialize(board)
    @bingo_board = board
  end

  def call
    @letter = rand(0..4)

    if @letter == 0 # B
      @number = rand(1..15)
    elsif @letter == 1 # I
      @number = rand(16..30)
    elsif @letter == 2 # N
      @number = rand(31..45)
    elsif @letter == 3 # G
      @number = rand(46..60)
    else # 0 @letter = 4
      @number = rand(61..75)
    end

  end

  def check
    @bingo_board.each do |line|
      line[@letter] == @number ? line[@letter] = 'X' : line[@letter]
    end
    pp @bingo_board
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Pseudocoding for this challenge wasn't too bad, I feel the past week or two of pseudocoding for ruby has really helped with my style.

# What are the benefits of using a class for this challenge?
# The benefit of using the class is that is combines all the related methods for bingo within one object

# How can you access coordinates in a nested array?
# You can access coordinates based on the nested indexes, example[0][2]

# What methods did you use to access and modify the array?
# I used the each method to go through each nested array, then used nested array notation to check if the given row and column (index position) was equal to the number called. I reset the value if it matched, else let if alone

# How did you determine what should be an instance variable versus a local variable?
# I only use instance variables if they are going to be passed to other methods.

# What do you feel is most improved in your refactored solution?
# I tend to get carried away trying to make my code as minimalist as possible.
# I chose to remove the hash and simply refer to the letters as index numbers, as that is the only role they play.
# I left in comments for each letter.
# Added the proper number intervals for each letter.
# Added require pp for cleaner display of the nested arrays
# Also added ternary expression into my check method.