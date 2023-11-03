def stock_picker(arr)
  maxi = 0
  mini = arr[0]

  arr.each do |value|
    mini = [value, mini].min
    maxi = [maxi, value - mini].max
  end
  if maxi == 0
    return -1
  end

  return maxi
end

puts "Enter an array (type end to finish):"
arr = []
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  arr.push(s.to_i)
end

puts stock_picker(arr)
