def is_prime(num)
  _temp = num / 2
  for i in 2.._temp.round
    if num % i == 0
      return false
    end
  end

  return true
end

def prime_numbers(arr)
  res = Array.new
  arr.each do |value|
    if is_prime(value.to_i)
      res.push(value.to_i)
    end
  end

  return res
end

print "Enter the array (space separated values):"
str = gets.chomp
arr = str.split(" ")

puts prime_numbers(arr)
