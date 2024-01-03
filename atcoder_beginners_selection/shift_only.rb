n = gets.chomp.to_i
numbers = gets.chomp.split.map(&:to_i)
count = 0

while numbers.all?(&:even?)
  numbers.map! { |number| number / 2 }
  count += 1
end

puts count