loop do
  m, f, r = gets.chomp.split.map(&:to_i)

  break if m == -1 && f == -1 && r == -1

  if m == -1 || f == -1
    puts "F"
  elsif m + f >= 80
    puts "A"
  elsif m + f >= 65
    puts "B"
  elsif m + f >= 50
    puts "C"
  elsif m + f >= 30
    puts r >= 50 ? "C" : "D"
  else
    puts "F"
  end
end