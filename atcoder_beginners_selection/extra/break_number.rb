n = gets.chomp.to_i

max_count = 0

(1..n).each do |number|
  count = 0

  while number.even?
    count += 1
    number /= 2
  end

  max_count = count if max_count < count
end

puts 2 ** max_count