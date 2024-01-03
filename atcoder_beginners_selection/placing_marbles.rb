s = gets.chomp.to_i
count = 0

while s > 0
  count += 1 if s % 10 == 1
  s /= 10
end

puts count