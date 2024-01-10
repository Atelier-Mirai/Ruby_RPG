# カーソルを消す
system "tput civis"
# 画面の文字を消す
system "clear"

# オープニング画面
puts <<~OPENING
  遙かなる未来への旅立ち
  --- 失われし伝説を求めて ---

  HIT ANY KEY to Start
OPENING
gets
system "clear"

# スライムのHPと最大HPを設定する
max_hp = 10 + rand(0..2)
hp     = max_hp

# 勇者のHPと最大HPを設定する
yusha_max_hp = 10 + rand(0..2)
yusha_hp     = yusha_max_hp

# 戦闘シーン
puts "スライムが現れた" # puts は、文字を表示する
gets                    # gets は、キーボードからの入力を受け取る
system "clear"

# スライムの活気度を表示するメソッド（関数）
def puts_liveliness(hp, max_hp)
  liveliness = (hp.to_r / max_hp.to_r) * 100
  case liveliness
  when 70..100
    puts "スライムはピンピンしている"
  when 30..70
    puts "スライムは弱ってきている"
  else
    puts "スライムは死にそうだ"
  end
end

# 倒すまで繰り返す
loop do
  # スライムの活気度
  puts_liveliness(hp, max_hp)

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
  hp -= damage
  gets
  system "clear"
  # 繰り返しを抜ける
  break if hp <= 0

  puts "スライムの攻撃"
  gets
  damage = rand(1..6)
  puts "勇者は#{damage}ポイントのダメージを負った"
  yusha_hp -= damage
  puts "勇者 ＨＰ：#{yusha_hp}"

  gets
  system "clear"
  # 繰り返しを抜ける
  break if yusha_hp <= 0
end

# 戦闘終了時のメッセージ
if hp <= 0
  puts "スライムを倒した"
  gets
else
  puts "勇者は死んでしまった"
  gets
end
