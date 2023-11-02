def sum_digit_product(arr)
  sum = 0
  arr.each do |x|
    sum += x
  end
  product = sum
  num = sum.to_s
  while num.length > 1
    _temp = 1
    num.chars.each do |x|
      _temp *= x.to_i
    end
    num = _temp.to_s
  end
  product = num.to_i
  return product
end

puts "Enter the array (type end to finish):"
arr = []
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  arr.push(s.to_i)
end

puts sum_digit_product(arr)
