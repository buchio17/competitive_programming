n, k = gets.chomp.split.map(&:to_i)
sticks = gets.chomp.split.map(&:to_i)

sticks.sort!.reverse!

puts sticks[0..(k - 1)].sum