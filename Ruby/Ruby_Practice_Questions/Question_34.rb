def intersection_array(nums1, nums2)
  res = []
  hash = Hash.new
  nums1.each do |num|
    hash[num] = 1
  end
  nums2.each do |num|
    hash[num] = 1
  end
  hash.each do |key, value|
    res.push(key)
  end

  return res
end

nums1 = []
puts "Enter the array1 (type end to finish):"
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  nums1.push(s.to_i)
end

nums2 = []
puts "Enter the array2 (type end to finish):"
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  nums2.push(s.to_i)
end

print intersection_array(nums1, nums2)
