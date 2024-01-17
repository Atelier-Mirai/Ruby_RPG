# 定数の定義
ATTACK = 1
HEAL   = 2
ESCAPE = 3

# コマンドを表示する
puts "1: 攻撃"
puts "2: 回復"
puts "3: 逃走"

# キーボードからの入力を受け取って、改行文字を噛みちぎる。
require "io/console"
command = STDIN.getch.to_i

# コマンドに応じた行動
case command
when ATTACK
  puts "勇者の攻撃"
when HEAL
  puts "勇者は回復呪文を唱えた"
when ESCAPE
  puts "勇者は逃げ出した"
end
