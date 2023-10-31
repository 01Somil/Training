def maximum_product(nums)
  product = 1
  maxi = 0
  nums.each do |i|
    product *= i
    maxi = [maxi, product].max
    if i == 0
      product = 1
    end
  end

  product = 1
  nums.reverse!
  puts nums
  nums.each do |i|
    product *= i
    maxi = [maxi, product].max
    if i == 0
      product = 1
    end
  end

  return maxi
end

nums = []
puts "Enter the array (type end to finish):"
loop do
  _s = gets.chomp
  if _s == "end"
    break
  end
  nums.push(_s.to_i)
end

puts maximum_product(nums)
