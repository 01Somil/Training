def sum_of_diagonals(mat)
  size = mat.length
  half = -1
  if size % 2 == 1
    half = size / 2
  end

  sum = 0
  for i in 0...size
    sum += mat[i][i]
  end

  column = size - 1
  for i in 0...size
    if half != -1 && half == i
      next
    end
    sum += mat[i][column]
    column -= 1
  end

  return sum
end

mat = []
print "Enter the size of square matrix:"
n = gets.chomp.to_i

puts "Enter the array:"
for i in 0...n
  rows = []
  for j in 0...n
    num = gets.chomp.to_i
    rows.push(num)
  end

  mat.push(rows)
end

puts sum_of_diagonals(mat)
