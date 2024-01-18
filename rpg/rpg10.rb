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

# 定数の定義
ATTACK = 0
HEAL   = 1
ESCAPE = 2

# 倒すまで繰り返す
loop do
  # 大域脱出
  command = catch(:exit) do
    command = 0
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

      # # コマンドを表示する
      # menus = ["戦う", "呪文", "逃げる"]
      # puts menus[0]
      # puts menus[1]
      # puts menus[2]
      # # if command == 0
      # #   print "＞"
      # # else
      # #   print "　"
      # # end
      # # puts menus[command]

      # コマンドを表示する
      menus = ["攻撃", "呪文", "逃走"]
      # menus.each do |menu|
      #   puts menu
      # end
      menus.each_with_index do |menu, index|
        # if index == command
        #   print "＞"
        # else
        #   print "　"
        # end
        print index == command ? "＞" : "　"
        puts menus[index]
      end

      # キーボードからの入力を一文字受け取る
      require "io/console"
      while (key = STDIN.getch) != "\C-c"
        case key
        when "\u0010" # Ctrl + P ↑
          # command = command - 1
          command = (command - 1) % menus.size
          break
        when "\u000e" # Ctrl + N ↓
          # command = command + 1
          command = (command + 1) % menus.size
          break
        when "\r" # Enter
          throw :exit, command
        end
      end
      system "clear"
    end
  end

  # コマンドに応じた行動
  case command
  when ATTACK
    puts "勇者の攻撃"
    gets
    damage = rand(1..6)
    puts "スライムに#{damage}ポイントのダメージを与えた"
    hp -= damage
    gets
    system "clear"
    # 繰り返しを抜ける
    break if hp <= 0
  when HEAL
    puts "勇者は回復呪文を唱えた"
    gets
    heal = rand(1..6)
    puts "勇者のＨＰが#{heal}ポイント回復した"
    gets
    yusha_hp += heal
  when ESCAPE
    puts "勇者は急いで逃げ出した"
    gets
    break # 繰り返しを抜ける
  end

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
elsif yusha_hp <= 0
  puts "勇者は死んでしまった"
  gets
else
  puts "勇者は無事に脱出できた"
  gets
end
