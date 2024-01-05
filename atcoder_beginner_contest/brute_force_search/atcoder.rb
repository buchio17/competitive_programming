s = gets.chomp

result = 0

s.length.times do |i|
  acgt_length = 0

  s.chars[i..].each do |char|
    break unless "ACGT".include?(char)

    acgt_length += 1
  end

  result = acgt_length if result < acgt_length
end

puts result