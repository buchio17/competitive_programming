while deck_of_cards = gets.chomp
  break if deck_of_cards == "-"

  m = gets.chomp.to_i

  m.times do
    h = gets.chomp.to_i

    deck_of_cards = deck_of_cards[h..-1] + deck_of_cards[0...h]
  end

  puts deck_of_cards
end