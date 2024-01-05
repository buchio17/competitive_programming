grid = []
3.times { grid << gets.chomp.split.map(&:to_i) }
result = "No"

(0..grid[0].min).each do |x|
  b = [grid[0][0] - x, grid[0][1] - x, grid[0][2] - x]
  a = [x, grid[1][0] - b[0], grid[2][0] - b[0]]

  is_correct = true

  (1..2).each do |i|
    (1..2).each do |j|
      is_correct = false if a[i] + b[j] != grid[i][j]
    end
  end

  result = "Yes" if is_correct
end

puts result