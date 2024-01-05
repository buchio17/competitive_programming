# https://atcoder.jp/contests/abc144/tasks/abc144_b

n = gets.chomp.to_i

result = "No"

catch :escape do
  (1..9).each do |i|
    (1..9).each do |j|
      if i * j == n
        result = "Yes"
        throw :escape
      end
    end
  end
end

puts result