number = 0.7 # 元の十進数の数字
digit  = 1 # 桁数

# 繰り返す
loop do
  number *= 2
  if number >= 1
    puts "#{digit}桁目は 1 です"
    number -= 1
  else
    puts "#{digit}桁目は 0 です"
  end

  # 十桁出したら終了する
  if digit == 10
    break
  else
    digit += 1
  end
end
