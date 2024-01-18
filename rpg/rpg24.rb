# キャラクタクラスの宣言
class Character
  attr_reader :name, :max_hp
  attr_accessor :hp

  # 初期化メソッド（関数）
  def initialize(name, max_hp)
    @name   = name                # 名前
    @max_hp = max_hp + rand(0..3) # HP最大値
    @hp     = @max_hp             # Hit Point 生命力
  end

  # ステータス
  def status
    "#{@name} HP: #{@hp}/#{@max_hp}\n"
  end

  # アスキーアート
  def ascii_art
    <<~AA
      　／　＼
      ／・Д・＼
      〜〜〜〜〜
    AA
  end

  # 活気度メソッド（関数）
  def liveliness
    case (@hp.to_r / @max_hp.to_r) * 100
    when 70..100
      "#{@name}はぴんぴんしている"
    when 30..70
      "#{@name}は弱っている"
    else
      "#{@name}は死にかけている"
    end
  end

  # 死亡判定メソッド
  def die?
    @hp <= 0
  end
end


# キャラクタクラスから、新しい一匹のスライムを作り出す
slime = Character.new("スライム", 10)
# 勇者の登場
yusha = Character.new("勇者", 10)

# 画面を消去
system "clear"

puts "#{slime.name}が現れた！"

loop do
  command = catch(:exit) do
    command = 0
    loop do
      # 活気度の表示
      puts slime.liveliness
      # アスキーアートの表示
      puts slime.ascii_art
      # ステータスの表示
      puts slime.status
      puts
      menus = ["剣で攻撃", "回復魔法", "逃走する"]
      menus.each_with_index do |menu, index|
        print index == command ? "＞" : "　"
        puts menus[index]
      end

      require "io/console"
      while (key = STDIN.getch) != "\C-c"
        case key
        when "\u0010" # Ctrl + P ↑
          command = (command - 1) % menus.size
          break
        when "\u000e" # Ctrl + N ↓
          command = (command + 1) % menus.size
          break
        when "\r" # Enter
          throw :exit, command
        end
      end
      system "clear"
    end
  end

  puts
  case command
  when 0
    puts "勇者の攻撃"
    gets
    damage = rand(1..6)
    puts "スライムに#{damage}ポイントのダメージを与えた"
    gets
    slime.hp -= damage
    if slime.die?
      break # 繰り返しを抜ける
    end
  when 1
    puts "勇者は回復魔法を唱えた"
    gets
    heal = rand(1..6)
    puts "勇者の体力が#{heal}ポイント回復した"
    gets
    yusha.hp += heal
    yusha.hp = yusha.max_hp if yusha.hp > yusha.max_hp
  when 2
    puts "勇者は逃げ出した"
    gets
    break # 繰り返しを抜ける
  end

  puts "スライムの攻撃"
  gets
  damage = rand(1..6)
  puts "勇者は#{damage}ポイントのダメージを負った"
  yusha.hp -= damage
  puts yusha.status
  gets
  if yusha.die?
    break # 繰り返しを抜ける
  end

  system "clear"
end

if slime.die?
  puts "スライムを倒した"
  gets
elsif yusha.die?
  puts "勇者は死んでしまった"
  gets
else
  puts "勇者は無事に逃げ出せた"
  gets
end

=begin
回復呪文

=end
