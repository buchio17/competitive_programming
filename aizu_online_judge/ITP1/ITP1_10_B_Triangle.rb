a, b, c = gets.chomp.split.map(&:to_f)

c = c * Math::PI / 180

h = b * Math.sin(c)

s = a * h / 2

l = a + b + Math.sqrt(a ** 2 + b ** 2 - 2 * a * b * Math.cos(c))

puts sprintf("%.8f", s)
puts sprintf("%.8f", l)
puts sprintf("%.8f", h)