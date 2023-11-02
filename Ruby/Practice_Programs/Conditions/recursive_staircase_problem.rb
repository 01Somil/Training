def recursive_staircase(n, arr)
  if n < 0
    return 0
  end
  if n == 0
    return 1
  end
  res = 0
  for i in 0...arr.length
    res += recursive_staircase(n - arr[i], arr)
  end

  return res
end

print "Enter number of stairs:"
n = gets.chomp.to_i

puts "Enter the array (type 'end' to finish):"
arr = []

loop do
  s = gets.chomp
  if s == "end"
    break
  end
  arr.push(s.to_i)
end

puts recursive_staircase(n, arr)
