numbers = gets.chomp.split.map(&:to_i)

puts numbers.sort.join(' ')