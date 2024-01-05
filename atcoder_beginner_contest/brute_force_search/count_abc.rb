n = gets.chomp.to_i
s = gets.chomp

result = 0

n.times do |i|
  result += 1 if s[i..(i + 2)] == "ABC"
end

puts result