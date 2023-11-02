def count_specific_digit(l_limit, u_limit, digit)
  count = 0
  i = l_limit
  while i <= u_limit
    str = i.to_s
    _temp = str.scan(digit)
    count += _temp.length
    i += 1
  end

  return count
end

puts "Enter the lower limit:"
l_limit = gets.chomp.to_i
puts "Enter the upper limit:"
u_limit = gets.chomp.to_i

print "Enter the digit:"
digit = gets.chomp

puts count_specific_digit(l_limit, u_limit, digit)
