# https://atcoder.jp/contests/abc167/tasks/abc167_c

# 解法
# N冊の本それぞれを購入有無の組み合わせを全て試す
# 全ての本の理解度がX以上のもので、最小価格となるものが答え

n, m, x = gets.chomp.split.map(&:to_i)

books = n.times.map do
  gets.chomp.split.map(&:to_i)
end

result = -1

(1...(1 << n)).each do |i|
  amounts = 0
  understandings = Array.new(m) { 0 }

  (0...n).each do |j|
    if i >> j & 1 == 1
      amounts += books[j][0]
      understandings = understandings.map.with_index do |understand, k|
        understand + books[j][k + 1]
      end
    end
  end

  result = amounts if (result == -1 || result > amounts) && understandings.all? { |understand| understand >= x }
end

puts result