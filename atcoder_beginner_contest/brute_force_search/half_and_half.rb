a, b, c, x, y = gets.chomp.split.map(&:to_i)
result = 5000 * 10 ** 5 * 2

(0..[x, y].max).each do |i|
  amount = 2 * c * i + a * [0, x - i].max + b * [0, y - i].max

  result = amount if amount < result
end

puts result