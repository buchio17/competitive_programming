counts = Hash.new(0)

while line = gets
  line.chomp!
  line.downcase!

  line.chars do |c|
    counts[c] += 1 if c.match?(/[a-z]/)
  end
end

('a'..'z').each do |letter|
  puts "#{letter} : #{counts[letter]}"
end