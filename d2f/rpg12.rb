# キャラクタクラスの宣言
class Character
  attr_reader :name
  attr_accessor :hp

  # 初期化メソッド（関数）
  def initialize(name, max_hp)
    @name   = name                 # 名前
    @max_hp = max_hp + rand(0..2)  # HP最大値
    @hp     = @max_hp              # Hit Point 生命力
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
end

# キャラクタクラスから、新しい一匹のスライムを作り出す
slime = Character.new("スライム", 10)
# 勇者の登場
yusha = Character.new("勇者", 30)

system "clear"

puts "#{slime.name}が現れた！"

loop do
  # アスキーアートの表示
  puts slime.ascii_art
  # ステータスの表示
  puts slime.status
  # 活気度の表示
  puts slime.liveliness

  puts "勇者の攻撃"
  gets
  damage = rand(1..6)
  puts "スライムに#{damage}ポイントのダメージを与えた"
  gets
  slime.hp -= damage
  if slime.hp <= 0
    break # 繰り返しを抜ける
  end
  system "clear"
end

if slime.hp <= 0
  puts "スライムを倒した"
  gets
end

=begin
活気度も入れてみたわ

それで勇者とスライムと戦ってみましょう。
=end
