n, m = gets.chomp.split.map(&:to_i)

a = []
n.times { a.push(gets.chomp.split.map(&:to_i)) }

b = []
m.times { b.push(gets.chomp.to_i) }

n.times do |i|
  c = 0
  m.times { |j| c += a[i][j] * b[j] }
  puts c
end