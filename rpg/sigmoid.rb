def sigmoid(x, a = 0.45)
  1 / (1 + Math::E ** (-a*x))
end

str = 10
dfs = 5

diff = str = dfs
diff = 20
damage = (diff * sigmoid(diff/10) + rand(diff) / 3).round

p damage

# (STR - DFS) / 10
# (INT - INT) / 10

puts sigmoid(0)
puts sigmoid(1)
puts sigmoid(2)
puts sigmoid(3)
