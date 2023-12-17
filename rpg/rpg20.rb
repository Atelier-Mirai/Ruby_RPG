class Character
  attr_accessor :name,    # 名前
                :hp,      # hit point 生命力
                :max_hp,  # HP最大値
                :mp,      # magic point 魔力,
                :max_mp,  # MP最大値
                :str,     # strength 攻撃力
                :dfs,     # defense 防御力
                :int,     # intelligence 知力
                :agi,     # agility 敏捷性
                :level,   # level レベル
                :exp,     # experience 経験値
                :gold     # gold 所持金

  def initialize(name, hp, max_hp, mp, max_mp)
    @name   = name
    @hp     = hp
    @max_hp = max_hp
    @mp     = mp
    @max_mp = max_mp
  end

  def status(all: false)
    s = "#{name} HP: #{hp}/#{max_hp} MP: #{mp}/#{max_mp}\n"
    if all
      s += "  " * name.length + " LV: #{level} EXP: #{exp} GOLD: #{gold}\n"
      s += "  " * name.length + " STR: #{str} DEF: #{dfs} INT: #{int} AGI: #{agi}\n"
    end
    s
  end

  def ascii_art
    <<~AA
      　／　＼
      ／・Д・＼
      〜〜〜〜〜
    AA
  end

  def equipment
    剣
      棍棒 Lv1
      鋼の剣 Lv2
      勇者の剣 Lv7
    鎧
      旅立ちの服 Lv1
      精霊の衣 Lv5
      勇者の鎧 Lv7
    装飾品
      旅のお守り Lv1
      精霊の指輪 Lv4
      勇者の証 Lv7
    道具(max 5)
      薬草 HP 回復
      毒消 毒を消す
      聖水 MP 回復
  end

  def monster
    slime スライム
    goblin ゴブリン
    almiraj アルミラージ
    ork オーク
    minotaur ミノタウロス

    siren セイレーン
    gargoyle ガーゴイル
    golem ゴーレム
    chimera キマイラ
    dragon ドラゴン
    devil 魔王
  end
end

# Character = Struct.new(:name, :hp, :max_hp, :mp, :max_mp)
#
$slime      = Character.new("スライム", 10, 10, 0, 0)
$dragon     = Character.new("ドラゴン", 100, 100, 100, 100)
$devil_king = Character.new("魔王", 500, 500, 500, 500)
$yusha       = Character.new("勇者", 30, 30, 30, 30)

puts $slime.status(all: true)
puts $slime.name.length
def battle()
  draw_battle_screen()
end

def draw_battle_screen()
  puts $yusha.name
  puts "スライムが現れた"
  puts $slime.pritty_status
  # puts "(#{$slime.hp}/#{$slime.max_hp})"
end

# battle
