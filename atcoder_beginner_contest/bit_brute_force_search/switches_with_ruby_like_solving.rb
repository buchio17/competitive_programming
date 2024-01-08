# https://atcoder.jp/contests/abc128/tasks/abc128_c
# bit全検索をrepeated_permutationを用いて解く
n, m = gets.chomp.split.map(&:to_i)

switches_for_each_light = []
m.times { switches_for_each_light << gets.chomp.split[1..].map(&:to_i) }

p = gets.chomp.split.map(&:to_i)

result = 0

[0, 1].repeated_permutation(n).each do |rp|
  is_all_lights_on = true

  switches_for_each_light.each_with_index do |switches_for_light, i|
    unless switches_for_light.count { |switch| rp[switch - 1] == 1 } % 2 == p[i]
      is_all_lights_on = false
      break
    end
  end

  result += 1 if is_all_lights_on
end

puts result