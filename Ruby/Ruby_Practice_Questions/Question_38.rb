def start_and_end_index(nums, target)
  hash = Hash.new
  start_idx = -1
  end_idx = -1
  nums.each_with_index do |num, index|
    if num == target
      if hash.has_key?(num)
        end_idx = index
        hash[num] = index
      else
        start_idx = index
        hash[num] = index
      end
    end
  end

  return [start_idx, end_idx]
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

print "Start and end indices respectively:",start_and_end_index(nums, target)
