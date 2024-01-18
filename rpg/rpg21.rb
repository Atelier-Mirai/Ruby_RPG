# キャラクタクラスの宣言
class Character
  # attr_accessor :hp

  # 初期化メソッド（関数）
  def initialize(name, max_hp)
    @name   = name                 # 名前
    @max_hp = max_hp + rand(0..2)  # HP最大値
    @hp     = @max_hp              # Hit Point 生命力
  end

  def hp
    @hp
  end

  # def hp=(val)
  def hp=(val)
    @hp = val
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
end

# キャラクタクラスから、新しい一匹のスライムを作り出す
slime = Character.new("スライム", 10)

# アスキーアートの表示
puts slime.ascii_art

# ステータスの表示
puts slime.status

# スライムのHPの更新
slime.hp = 25
puts slime.hp

# ステータスの表示
puts slime.status

=begin
@で始まる変数、名はインスタンス変数と呼ばれているわ。端から生成した個々のたい焼きそれぞれが持っている変数のことね。スライム方から編成スライムの方からスライム方から編成したHPのことね。体力があるスライムもあるだろうし、少ないスライムもあるだろうね。
カプセル化の説明。
読み取りメソッドと書き込みメソッドの説明
アクセッサメソッドの説明
@hp にはアクセス可能　読み書き可能
@max_hp, @name にはアクセス不能
attr_reader :name で名前の読み出しが可能になる
@hp=(val)について、@hp = hp

=end
