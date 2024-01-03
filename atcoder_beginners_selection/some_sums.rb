n, a, b = gets.chomp.split.map(&:to_i)

numbers = (1..n).select do |i|
  sum = 0

  while i > 0
    sum += i % 10
    i /= 10
  end

  a <= sum && sum <= b
end

puts numbers.sum