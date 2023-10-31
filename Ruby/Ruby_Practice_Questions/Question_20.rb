def two_numbers(arr, n)
  hash = Hash.new
  sum = 0
  twice_number = 0

  arr.each do |value|
    if hash.key?(value)
      twice_number = value
      sum -= value
    else
      hash[value] = 1
    end
    sum += value
  end
  
  _temp = n * (n + 1)
  missing_number = (_temp / 2) - sum

  return [missing_number, twice_number]
end

arr = []
print "Enter the number:"
n = gets.chomp.to_i
puts "Enter the array (type end to finish):"
for i in 0...10
  x = gets.chomp.to_i
  arr.push(x)
end

res = two_numbers(arr, n)
puts "Missing number is #{res[0]}\nTwice number is #{res[1]}"
