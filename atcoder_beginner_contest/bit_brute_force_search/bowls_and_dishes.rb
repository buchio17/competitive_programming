# https://atcoder.jp/contests/abc190/tasks/abc190_c

# 解法
# K人のボールを置き方の全パターンを考える
# 各パターンにおいて満たされる条件を数えて、最大となるものが答え

n, m = gets.chomp.split.map(&:to_i)
conditions = m.times.map { gets.chomp.split.map(&:to_i) }
k = gets.chomp.to_i
bowls = k.times.map { gets.chomp.split.map(&:to_i) }

result = 0

(0...(1 << k)).each do |i|
  dishes = Array.new(n) { 0 }

  (0...k).each do |j|
    dishes[bowls[j][i >> j & 1] - 1] = 1
  end

  condition_count = conditions.count { |condition| dishes[condition[0] - 1] == 1 && dishes[condition[1] - 1] == 1 }

  result = condition_count if result < condition_count
end

puts result