n, amount = gets.chomp.split.map(&:to_i)
x, y, z = -1, -1, -1

catch :escape do
  (amount / 10000).downto(0) do |i|
    ((amount - 10000 * i) / 5000).downto(0) do |j|
      k = n - i - j

      if 10000 * i + 5000 * j + 1000 * k == amount
        x, y, z = i, j, k
        throw :escape
      end
    end
  end
end


puts "#{x} #{y} #{z}"