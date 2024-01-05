n = gets.chomp.to_i

result = 0

(1..n).each do |i|
  result += 1 if i.to_s.length.odd?
end

puts result