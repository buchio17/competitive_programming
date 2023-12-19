str = gets.chomp

q = gets.chomp.to_i

q.times do
  action, a, b, p = gets.chomp.split

  a = a.to_i
  b = b.to_i

  case action
  when "print" then
    puts str[a..b]
  when "reverse" then
    str = str[0...a] + str[a..b].reverse + str[(b + 1)..]
  when "replace" then
    str = str[0...a] + p + str[(b + 1)..]
  end
end
