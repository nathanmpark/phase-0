# 99 bottles of beer on the wall
# def beer_song
#   n = 99
#   while n > 0
#     puts "#{n} bottles of beer on the wall, #{n} bottles of beer..."
#     n -= 1
#     puts "Take one down, pass it around, #{n} bottles of beer on the wall"
#   end
# end

# beer_song

#Deaf Grandma

# def deaf_granny
#   puts "Say something to Grandma"
#   while true
#     a = gets.chomp
#     n = rand(1930..1950)
#     if a == "BYE"
#       puts "BYE!"
#       break
#     end
#     if a == a.upcase then
#       puts "NO, NOT SINCE #{n}!"
#     else
#       puts "HUH?! SPEAK UP, SONNY!"
#     end
#   end
# end

# deaf_granny

# def deaf_granny_ext
# puts "Say something to Grandma"
# count = 0

# while true
#   a = gets.chomp
#   n = rand(1930..1950)
#   if a == "BYE"
#     count += 1
#     if count == 3
#       puts "BYE!"
#       break
#     end
#     puts "NO, NOT SINCE #{n}!"
#   else
#     count = 0
#     if a == a.upcase then
#       puts "NO, NOT SINCE #{n}!"
#     else
#       puts "HUH?! SPEAK UP, SONNY!"
#     end
#   end
# end
# end

# deaf_granny_ext

# Leap Years

def leap_years

puts "Choose a starting year.."
start = gets.chomp
start = start.to_i
puts "Choose an ending year.."
ends = gets.chomp
ends = ends.to_i
puts "Leap Years"

while start <= ends
  if (start%4 == 0)
    puts start unless (start%100 == 0 && start%400 != 0)
    start += 1
  else
    start += 1
  end
end
end

leap_years