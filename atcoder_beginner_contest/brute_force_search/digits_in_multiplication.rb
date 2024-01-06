n = gets.chomp.to_i

result = 100 # ありえない桁数

(1..Math.sqrt(n).floor).each do |i|
  next unless n % i == 0

  f = [i, n / i].max.to_s.length

  result = f if result > f
end

puts result