def greatest_absolute_sum(arr)
  pos = 0
  neg = 0
  zero = 0
  arr.each do |value|
    if value > 0
      pos += value
    elsif value < 0
      neg += value
    elsif value == 0
      zero += 1
    end
  end

  maxi = [pos, neg.abs, zero].max
  if neg.abs == maxi
    return neg
  end

  return maxi
end

arr = []
puts "Enter the array (type end to finish):"
loop do
  _x = gets.chomp
  if _x == "end"
    break
  end
  arr.push(_x.to_i)
end

puts greatest_absolute_sum(arr)
