s = gets.chomp

nonexistant_chars = (("a".."z").to_a - s.chars).sort

puts nonexistant_chars.empty? ? "None" : nonexistant_chars.first