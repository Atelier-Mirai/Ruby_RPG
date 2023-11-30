class Character
  attr_accessor :name, :hp, :max_hp, :mp, :max_mp

  def initialize(name, hp, max_hp, mp, max_mp)
    @name = name
    @hp = hp
    @max_hp = max_hp
    @mp = mp
    @max_mp = max_mp
  end

  def pritty_status
    "HP: #{hp}/#{max_hp} MP: #{mp}/#{max_mp}"
  end

  def ascii_art
    <<~AA
      　／　＼
      ／・Д・＼
      〜〜〜〜〜
    AA
end

# Character = Struct.new(:name, :hp, :max_hp, :mp, :max_mp)
#
$slime      = Character.new("スライム", 10, 10, 0, 0)
$dragon     = Character.new("ドラゴン", 100, 100, 100, 100)
$devil_king = Character.new("魔王", 500, 500, 500, 500)
$yusha       = Character.new("勇者", 30, 30, 30, 30)

def battle()
  draw_battle_screen()
end

def draw_battle_screen()
  puts $yusha.name
  puts "スライムが現れた"
  puts $slime.pritty_status
  # puts "(#{$slime.hp}/#{$slime.max_hp})"
end

battle
