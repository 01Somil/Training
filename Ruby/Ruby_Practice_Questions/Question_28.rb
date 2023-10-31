def good_pairs(nums)
  count_pairs = 0
  len = nums.size
  
  for i in 0...len
    for j in (i + 1)...len
      if nums[i] === nums[j]
        count_pairs += 1
      end
    end
  end

  return count_pairs
end

puts "Enter the array (type 'end' to finish):"
nums = []

loop do
  s = gets.chomp
  if s == "end"
    break
  end
  nums.push(s.to_i)
end

print "Number of good pairs are:", good_pairs(nums)
