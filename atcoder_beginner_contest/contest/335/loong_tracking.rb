n, q = gets.chomp.split.map(&:to_i)

dragon = []
n.downto(1) do |i|
  dragon << [i, 0]
end

q.times do |j|
  action, x = gets.chomp.split

  if action == "1"
    case x
    when "R"
      dragon << [dragon[-1][0] + 1, dragon[-1][1]]
    when "L"
      dragon << [dragon[-1][0] - 1, dragon[-1][1]]
    when "U"
      dragon << [dragon[-1][0], dragon[-1][1] + 1]
    when "D"
      dragon << [dragon[-1][0], dragon[-1][1] - 1]
    end
  elsif action == "2"
    puts dragon[-x.to_i].join(" ")
  end
end