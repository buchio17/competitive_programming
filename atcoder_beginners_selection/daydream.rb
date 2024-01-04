s = gets.chomp

loop do
  case
  when s.end_with?("dream")
    s.delete_suffix!("dream")
  when s.end_with?("dreamer")
    s.delete_suffix!("dreamer")
  when s.end_with?("erase")
    s.delete_suffix!("erase")
  when s.end_with?("eraser")
    s.delete_suffix!("eraser")
  else
    break
  end
end

puts s.empty? ? "YES" : "NO"

# 正規表現を使うとさらに簡単に解ける
# puts s.match?(/^(dream|dreamer|erase|eraser)+$/) ? 'YES' : 'NO'