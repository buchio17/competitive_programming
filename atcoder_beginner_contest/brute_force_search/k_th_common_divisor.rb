a, b, k = gets.chomp.split.map(&:to_i)
numbers = []

(1..[a, b].min).each do |i|
  numbers << i if a % i == 0 && b % i == 0
end

puts numbers[-k]
