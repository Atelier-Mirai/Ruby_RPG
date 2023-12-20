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

# スライムのHPと最大HPを設定する
hp     = 10
max_hp = 10

# 戦闘シーン
puts "スライムが現れた" # puts は、文字を表示する
gets                    # gets は、キーボードからの入力を受け取る
system "clear"

# 倒すまで繰り返す
loop do
  # スライムの活気度
  if hp >= max_hp * 0.7
    puts "スライムはピンピンしている"
  elsif hp >= max_hp * 0.3
    puts "スライムは弱ってきている"
  else
    puts "スライムは死にそうだ"
  end

  puts "　／　＼"
  puts "／・Д・＼"
  puts "〜〜〜〜〜"
  puts "スライム ＨＰ：#{hp}"
  gets
  puts "勇者の攻撃"
  gets
  puts "スライムに3ポイントのダメージを与えた"
  hp -= 3               # スライムのHPを3減らす
  gets
  system "clear"

  # 繰り返しを抜ける
  break if hp <= 0
end

# 戦闘終了
puts "スライムを倒した"
gets
