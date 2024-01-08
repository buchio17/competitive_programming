# https://atcoder.jp/contests/abc128/tasks/abc128_c
# bit全検索をビット演算で解く
n, m = gets.chomp.split.map(&:to_i)

switches_for_each_light = []
m.times { switches_for_each_light << gets.chomp.split[1..].map(&:to_i) }

p = gets.chomp.split.map(&:to_i)

result = 0

(0...(1 << n)).each do |i|
  on_switches = []

  (0...n).each do |k|
    on_switches << k + 1 if 1 & i >> k == 1
  end

  # それぞれの電球が点灯しているかを判定する
  is_all_lights_on = true

  m.times do |light|
    on_switches_for_light = switches_for_each_light[light] & on_switches
    is_all_lights_on = false if on_switches_for_light.count % 2 != p[light]
  end

  result += 1 if is_all_lights_on
end

puts result