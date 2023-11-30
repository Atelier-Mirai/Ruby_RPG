result = catch(:exit) do
  for i in 1..2
    for j in 1..2
      for k in 1..2
        throw :exit, "owaridesu"
      end
    end
  end
end

p result
