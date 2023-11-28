s = gets.chomp.to_i

h = s / 3600
m = (s % 3600) / 60
s = s % 60

puts "#{h}:#{m}:#{s}"