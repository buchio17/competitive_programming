# https://atcoder.jp/contests/abc182/tasks/abc182_c

n = gets.chomp
k = n.size

ans = 100

# ありうる2進数を全て作成し、各桁が0か1かを確認していく
# まず、全パターンの2進数を作るために左シフト演算
(1...(1 << k)).each do |num|
  # 桁を消して作れる数字
  n_tmp = ""

  # 消した個数
  ans_tmp = 0

  # 各桁が0か1か確認。1ならば選択し、0ならば選択肢しない
  (0...k).each do |shift|
    # 判定のために右シフト演算とアンド演算
    if 1 & num >> shift == 1
      n_tmp = n_tmp + n[shift]
    else
      ans_tmp += 1
    end
  end

  ans = [ans, ans_tmp].min if n_tmp.to_i % 3 == 0
end

puts ans == 100 ? "-1" : ans