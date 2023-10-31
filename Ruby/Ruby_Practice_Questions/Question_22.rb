def number_of_pairs(arr, k)
  pairs = 0
  len = arr.length
  
  for i in 0...arr.length
    for j in (i + 1)...arr.length
      diff = (arr[i] - arr[j]).abs
      if diff == k
        pairs += 1
      end
    end
  end

  return pairs
end

arr = []
print "Enter the number k:"
k = gets.chomp.to_i
puts "Enter the array (type end to finish):"

loop do
  s = gets.chomp
  if s == "end"
    break
  end
  arr.push(s.to_i)
end

puts number_of_pairs(arr, k)
