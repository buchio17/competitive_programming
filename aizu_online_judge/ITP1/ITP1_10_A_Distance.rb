x1, y1, x2, y2 = gets.chomp.split.map(&:to_f)

puts Math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2).round(7)