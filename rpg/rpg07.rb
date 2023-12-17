system "tput civis"
system "clear"

puts <<~OPENING
  遙かなる未来への旅立ち
  --- 失われし伝説を求めて ---

  HIT ANY KEY to Start
OPENING
gets

system "clear"

# スライムのＨＰを設定する
max_hp = 10 + rand(0..2)
hp     = max_hp
puts "スライムが現れた"

loop do
  # スライム出現
  liveliness = (hp.to_r / max_hp.to_r) * 100
  case liveliness
  when 70..100
    puts "スライムはぴんぴんしている"
  when 30..70
    puts "スライムは頑張っている"
  else
    puts "スライムは弱っている"
  end

  puts <<~SLIME
    　／　＼
    ／・Д・＼
    〜〜〜〜〜
    ＨＰ：#{hp}
  SLIME
  gets
  puts "勇者の攻撃"
  gets
  damage = rand(1..6)
  puts "スライムに#{damage}ポイントのダメージを与えた"
  hp = hp - damage
  gets
  system "clear"

  if hp <= 0
    break # 繰り返しを抜ける
  end
end

puts "スライムを倒した"
gets
