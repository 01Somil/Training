def divisible_by_seven(number)
  numbers = number.chars
  unit_digit = (numbers[-1].to_i) * 2
  remaining_part = number.slice(0...-1).to_i
  diff = (remaining_part - unit_digit).abs
  if diff % 7 == 0
    return 1
  end

  return 0
end

print "Enter the number:"
number = gets.chomp

puts divisible_by_seven number
