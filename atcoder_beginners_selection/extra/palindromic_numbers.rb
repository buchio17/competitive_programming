a, b = gets.chomp.split.map(&:to_i)
result = 0

(a..b).each do |number|
  result += 1 if number.to_s == number.to_s.reverse
end

puts result