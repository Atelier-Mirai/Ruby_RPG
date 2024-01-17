# コマンドを表示する
puts "1: 攻撃"
puts "2: 回復"
puts "3: 逃走"

# キーボードからの入力を受け取って、改行文字を噛みちぎる。
command = gets.chomp
# to_iメソッドで整数型に変換する
command = command.to_i
puts command

# コマンドに応じた処理
case command
when 1
  puts "勇者の攻撃"
when 2
  puts "勇者は回復呪文を唱えた"
when 3
  puts "勇者は逃げ出した"
end
