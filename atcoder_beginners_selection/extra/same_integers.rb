numbers = gets.chomp.split.map(&:to_i)

result = 0

while numbers.max - numbers.min >= 2
  result += 1

  numbers[numbers.index(numbers.min)] += 2
end

case numbers.count(numbers.max)
when 1
  result += 1
when 2
  result += 2
end

puts result