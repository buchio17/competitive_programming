n = gets.chomp.to_i

result = "Yes"
before_t, before_x, before_y = 0, 0, 0

n.times do
  t, x, y = gets.chomp.split.map(&:to_i)

  time = t - before_t
  dist_x = (x - before_x).abs
  dist_y = (y - before_y).abs
  dist = dist_x + dist_y

  unless time >= dist && ((time.even? && dist.even?) || (time.odd? && dist.odd?))
    result = "No"
    break
  end

  before_t = t
  before_x = x
  before_y = y
end

puts result