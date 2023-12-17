require "io/console"
while (key = STDIN.getch) != "\C-c"
  puts "#{key.inspect} キーが押されました。"
end
