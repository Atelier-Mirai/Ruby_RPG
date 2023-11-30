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
# 勇者のＨＰを設定する
yusha_max_hp = 10 + rand(0..2)
yusha_hp     = yusha_max_hp
puts "スライムが現れた"

# スライムの活気度を表示するメソッド（関数）
def puts_liveliness(hp, max_hp)
  liveliness = (hp.to_r / max_hp.to_r) * 100
  case liveliness
  when 70..100
    puts "スライムはぴんぴんしている"
  when 30..70
    puts "スライムは頑張っている"
  else
    puts "スライムは弱っている"
  end
end

loop do
  puts_liveliness(hp, max_hp)

  puts <<~SLIME
    　／　＼
    ／・Д・＼
    〜〜〜〜〜
    スライム ＨＰ：#{hp}
  SLIME
  gets
  puts "勇者の攻撃"
  gets
  damage = rand(1..6)
  puts "スライムに#{damage}ポイントのダメージを与えた"
  gets
  hp = hp - damage
  if hp <= 0
    break # 繰り返しを抜ける
  end

  puts "スライムの攻撃"
  damage = rand(1..6)
  puts "勇者は#{damage}ポイントのダメージを負った"
  yusha_hp = yusha_hp - damage
  puts "勇者 ＨＰ：#{yusha_hp}"

  gets
  system "clear"

  if yusha_hp <= 0
    break # 繰り返しを抜ける
  end
end

if hp <= 0
  puts "スライムを倒した"
  gets
else
  puts "勇者は死んでしまった"
  gets
end
