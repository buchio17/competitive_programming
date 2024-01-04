# s = gets.chomp
#
# topping_count = 0
#
# topping_count += 1 if s[0] == "o"
# topping_count += 1 if s[1] == "o"
# topping_count += 1 if s[2] == "o"
#
# puts 700 + topping_count * 100

s = gets.chomp

puts 700 + s.chars.select { |char| char == "o" }.count * 100