r, c = gets.chomp.split.map(&:to_i)

matrix = []

r.times { matrix.push(gets.chomp.split.map(&:to_i)) }

matrix.each { |row| row.push(row.sum) }

matrix.push(matrix.transpose.map(&:sum))

matrix.each { |row| puts row.join(" ") }