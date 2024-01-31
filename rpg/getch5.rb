# キーボードからの入力を一文字受け取る
require "io/console"

# コマンドを表示する
def puts_menus(command)
  menus = ["攻撃", "回復", "逃走"]
  menus.each.with_index do |menu, index|
    print index == command ? "＞" : "　"
    puts menus[index]
  end
end


selection = catch(:exit) do
  command = 0 # コマンドの初期値は攻撃
  loop do
    puts <<~SLIME
      　／　＼
      ／・Д・＼
      〜〜〜〜〜
    SLIME

    puts_menus(command)
    while (key = STDIN.getch) != "\C-c"
      case key
      when "\u0010" # Ctrl + P ↑
        command = (command - 1) % 3
        break
      when "\u000e" # Ctrl + N ↓
        command = (command + 1) % 3
        break
      when "\r" # Enter
        throw :exit, command
      end
    end
    system "clear"
  end
end

puts selection
