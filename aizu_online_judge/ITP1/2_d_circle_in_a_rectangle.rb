w, h, x, y, r = gets.chomp.split.map(&:to_i)

puts x >= r && x <= w - r && y >= r && y <= h - r ? "Yes" : "No"