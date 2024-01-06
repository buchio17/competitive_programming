# https://atcoder.jp/contests/abc214/tasks/abc214_b

s, t = gets.chomp.split.map(&:to_i)
count = 0

(0..100).each do |i|
  (0..100).each do |j|
    (0..100).each do |k|
      count += 1 if i + j + k <= s && i * j * k <= t
    end
  end
end

puts count