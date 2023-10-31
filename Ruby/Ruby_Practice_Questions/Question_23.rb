def running_sum(arr)
  arr.each_with_index do |value, index|
    if index == 0
      next
    end
    arr[index] += arr[index - 1]
  end

  return arr
end

arr = []
puts "Enter the array (type end to finish):"

loop do
  s = gets.chomp
  if s == "end"
    break
  end
  arr.push(s.to_i)
end

print running_sum(arr)
