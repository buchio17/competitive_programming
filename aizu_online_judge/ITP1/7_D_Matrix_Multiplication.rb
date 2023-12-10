require 'matrix'

n, m, l = gets.chomp.split.map(&:to_i)

a = []
n.times { a.push(gets.chomp.split.map(&:to_i)) }

b = []
m.times { b.push(gets.chomp.split.map(&:to_i)) }

(Matrix.rows(a) * Matrix.rows(b)).row_vectors.each do |row|
  puts row.to_a.join(" ")
end
