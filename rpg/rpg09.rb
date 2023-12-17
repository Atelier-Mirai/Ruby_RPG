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

# スライムの活気度メソッド（関数）
def liveliness(hp, max_hp)
  case (hp.to_r / max_hp.to_r) * 100
  when 70..100
    "スライムはぴんぴんしている"
  when 30..70
    "スライムは弱っている"
  else
    "スライムは死にかけている"
  end
end


ATTACK = 0
SPELL  = 1
ESCAPE = 2

loop do
  command = catch(:exit) do
    command = 0
    loop do
      puts liveliness(hp, max_hp)

      puts <<~SLIME
        　／　＼
        ／・Д・＼
        〜〜〜〜〜
        スライム ＨＰ：#{hp}
      SLIME

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

      puts
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

  case command
  when ATTACK
    puts "勇者の攻撃"
    gets
    damage = rand(1..6)
    puts "スライムに#{damage}ポイントのダメージを与えた"
    gets
    hp = hp - damage
    if hp <= 0
      break # 繰り返しを抜ける
    end
  when SPELL
    puts "勇者は回復呪文を唱えた"
    gets
    heal = rand(1..6)
    puts "勇者のＨＰが#{heal}ポイント回復した"
    gets
    yusha_hp = yusha_hp + heal
  when ESCAPE
    puts "勇者は逃げ出した"
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
elsif yusha_hp <= 0
  puts "勇者は死んでしまった"
  gets
else
  puts "勇者は無事に脱出できた"
end
