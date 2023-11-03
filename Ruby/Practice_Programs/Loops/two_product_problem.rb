def two_product(arr, n)
  hash = Hash.new
  arr.each do |value|
    if n % value == 0
      if hash.has_key?(n / value)
        return [value, n / value]
      else
        hash[value] = 1
      end
    end
  end

  return "nil"
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
print "Enter the product:"
n = gets.chomp.to_i
print two_product(arr, n)
