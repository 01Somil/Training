def two_sum(nums, target)
  hash = Hash.new
  nums.each_with_index do |num, index|
    if hash.has_key?(target - num)
      return [hash[target - num], index]
    end
    hash[num] = index
  end
end

nums = []
puts "Enter the array (type end to finish):"
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  nums.push(s.to_i)
end

print "Enter the target value:"
target = gets.chomp.to_i

print two_sum(nums, target)
