def roman_to_integer(roman_number)
  hash = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000 }
  numbers = roman_number.chars
  sum = hash[numbers[0]]

  for i in 1...numbers.length
    if hash[numbers[i]] <= hash[numbers[i - 1]]
      sum += hash[numbers[i]]
    else
      diff = (hash[numbers[i]] - hash[numbers[i - 1]]).abs
      sum -= hash[numbers[i - 1]]
      sum += diff
    end
  end

  return sum
end

print "Enter roman number:"
roman_number = gets.chomp
puts roman_to_integer(roman_number)
