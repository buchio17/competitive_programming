loop do
  x = gets.chomp
  break if x.to_i == 0

  sum = 0
  x.each_char { |c| sum += c.to_i }

  puts sum
end