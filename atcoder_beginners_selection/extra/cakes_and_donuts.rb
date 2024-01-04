n = gets.chomp.to_i
result = "No"

(0..(n / 4)).each do |i|
  result = "Yes" if (n - 4 * i) % 7 == 0
end

puts result