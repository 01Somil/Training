def factorial_of_each_index(number)
  factorials_array = [1]
  for i in 1..number
    factorials_array.push(factorials_array[-1] * i)
  end

  return factorials_array
end

print "Enter the number:"
number = gets.chomp.to_i

print factorial_of_each_index number
