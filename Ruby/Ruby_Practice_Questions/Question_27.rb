def move_array_elements(nums)
  even = []
  odd = []
  nums.each do |num|
    if num.even?
      even.push(num)
    else
      odd.push(num)
    end
  end
  return even + odd
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

print move_array_elements(nums)
