n = gets.chomp.to_i

moti = []

n.times do
  moti << gets.chomp.to_i
end

moti.sort!

steps = 0

moti.each_with_index do |m, i|
  if i == 0
    steps += 1
  else
    steps += 1 if m > moti[i - 1]
  end
end

puts steps

# moti.uniq.size という賢い解法がある