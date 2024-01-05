n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

result = 1
is_increase = nil
previous_num = array[0]

array.each do |num|
  next if previous_num == num

  if is_increase == nil
    is_increase = previous_num < num
    previous_num = num
    next
  end

  if is_increase != previous_num < num
    result += 1
    is_increase = nil
  end

  previous_num = num
end

puts result