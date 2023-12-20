# カーソルを消す
system "tput civis"
# 画面の文字を消す
system "clear"

# オープニング画面
puts "遙かなる未来への旅立ち"
puts "--- 失われし伝説を求めて ---"
puts
puts "HIT ANY KEY to Start"
gets
system "clear"

# スライムのHPを設定する
hp = 10

# 戦闘シーン
puts "スライムが現れた" # puts は、文字を表示する
gets                    # gets は、キーボードからの入力を受け取る
system "clear"

# 倒すまで繰り返す
loop do
  puts "　／　＼"
  puts "／・Д・＼"
  puts "〜〜〜〜〜"
  puts "スライム ＨＰ：#{hp}"
  gets
  puts "勇者の攻撃"
  gets
  puts "スライムに3ポイントのダメージを与えた"
  hp = hp - 3             # スライムのHPを3減らす
  gets
  system "clear"

  if hp <= 0
    break # 繰り返しを抜ける
  end
end

# 戦闘終了
puts "スライムを倒した"
gets
