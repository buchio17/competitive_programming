count = 0

w = gets.chomp

while line = gets.chomp
  break if line == "END_OF_TEXT"

  line.downcase.split.each { |t| count += 1 if t == w }
end

puts count