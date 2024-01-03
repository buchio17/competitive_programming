n = gets.chomp.to_i
cards = gets.chomp.split.map(&:to_i)

cards.sort!.reverse!

cards_of_a = []
cards_of_b = []

cards.each_with_index do |card, i|
  i.even? ? cards_of_a << card : cards_of_b << card
end

puts cards_of_a.sum - cards_of_b.sum