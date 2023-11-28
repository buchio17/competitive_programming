a, b = gets.chomp.split.map(&:to_i)

result = case a <=> b
         when -1
           "a < b"
         when 1
           "a > b"
         when 0
           "a == b"
         end

puts result