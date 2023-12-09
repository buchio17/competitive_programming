r, c = gets.chomp.split.map(&:to_i)

matrix = []

r.times { matrix.push(gets.chomp.split.map(&:to_i)) }

matrix.each { |row| row.push(row.sum) }

last_row = Array.new(c + 1) { 0 }

matrix.each do |row|
  last_row.map!.with_index { |value, i| value + row[i] }
end

matrix.push(last_row)

matrix.each { |row| puts row.join(" ") }