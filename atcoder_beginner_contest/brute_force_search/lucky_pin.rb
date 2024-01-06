n = gets.chomp.to_i
s = gets.chomp

count = 0

(0..9).each do |i|
  (0..9).each do |j|
    (0..9).each do |k|
      if i_index = s.index(i.to_s)
        if j_index = s.index(j.to_s, i_index + 1)
          count += 1 if s.index(k.to_s, j_index + 1)
        end
      end
    end
  end
end

puts count