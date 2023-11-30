system "tput civis"
system "clear"

puts "遙かなる未来への旅立ち"
puts "--- 失われし伝説を求めて ---"
puts ""
puts "HIT ANY KEY to Start"
gets
system "clear"

# スライムのＨＰを設定する
hp     = 10
max_hp = 10
puts "スライムが現れた"

loop do
  # スライム出現
  if hp >= max_hp * 0.7
    puts "スライムはぴんぴんしている"
  elsif hp >= max_hp * 0.3
    puts "スライムは頑張っている"
  else
    puts "スライムは弱っている"
  end

  puts "　／　＼"
  puts "／・Д・＼"
  puts "〜〜〜〜〜"
  puts "スライム ＨＰ：#{hp}"
  gets
  puts "勇者の攻撃"
  gets
  puts "スライムに3ポイントのダメージを与えた"
  hp = hp - 3
  system "clear"

  if hp <= 0
    break # 繰り返しを抜ける
  end
end

puts "スライムを倒した"
gets
