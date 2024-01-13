# https://atcoder.jp/contests/abc147/tasks/abc147_c

n = gets.chomp.to_i

testimonines = []

n.times do
  a = gets.chomp.to_i

  testimonines_of_each = []

  a.times do
    testimonines_of_each << gets.chomp.split.map(&:to_i)
  end

  testimonines << testimonines_of_each
end

# 各人を正直者か不親切な人か仮定し、全パターンを試してみる(不親切な人は必ず嘘を言うわけではなく、真偽不明である点に注意)
# 各人の証言と矛盾がないパターンで、最も正直者が多いものが答え

result = 0

(0...(1 << n)).each do |i|
  pattern = (0...n).map { |j| i >> j & 1 == 1 ? 1 : 0 }

  is_consistent = true

  testimonines.each_with_index do |testimonines_of_each, k|
    is_honest = pattern[k] == 1

    # 正直者が間違ったことを言うと矛盾
    is_consistent = false if is_honest && testimonines_of_each.any? { |testimony| pattern[(testimony[0] - 1)] != testimony[1] }
  end

  result = pattern.count(1) if is_consistent && result < pattern.count(1)
end

puts result