taro = 0
hanako = 0

n = gets.chomp.to_i

n.times do
  taro_card, hanako_card = gets.chomp.split

  if taro_card > hanako_card
    taro += 3
  elsif taro_card < hanako_card
    hanako += 3
  else
    taro += 1
    hanako += 1
  end
end

puts "#{taro} #{hanako}"