# 123
# 124
# 125
# 234
# 235

loop do
  n, x = gets.chomp.split.map(&:to_i)

  break if n == 0 && x == 0

  count = 0

  (1..(n - 2)).each do |i|
    ((i + 1)..(n - 1)).each do |j|
      ((j + 1)..n).each do |k|
        count += 1 if (i + j + k) == x
      end
    end
  end

  puts count
end