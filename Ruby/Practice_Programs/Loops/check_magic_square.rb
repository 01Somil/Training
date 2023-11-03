def is_magic_square(n, arr)
  sum = 0
  for i in 0...n
    temp_sum = 0
    for j in 0...n
      temp_sum += arr[i][j]
    end
    if i == 0
      sum = temp_sum
    elsif sum != temp_sum
      return false
    end
  end

  for j in 0...n
    temp_sum = 0
    for i in 0...n
      temp_sum += arr[i][j]
    end
    if sum != temp_sum
      return false
    end
  end

  temp_sum = 0
  for i in 0...n
    temp_sum += arr[i][i]
  end
  if temp_sum != sum
    return false
  end

  for i in 0...n
    for j in 0..-1
      temp_sum = 0
      temp_sum += arr[i][j]
    end
    if sum != temp_sum
      return false
    end
  end

  return true
end

print "Enter the size of matrix:"
n = gets.chomp.to_i
arr = []

for i in 0...n
  row = []
  for j in 0...n
    x = gets.chomp.to_i
    row.push(x)
  end
  arr.push(row)
end

puts is_magic_square(n, arr)
