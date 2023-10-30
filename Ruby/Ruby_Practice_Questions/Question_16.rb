def palindrome_numbers(upper_limit)
  res = []
  while upper_limit >= 0 && res.length < 15
    str = upper_limit.to_s
    if str == str.reverse
      res.push(upper_limit)
    end
    upper_limit -= 1
  end

  return res.sort
end

print "Enter the upper limit:"
upper_limit = gets.chomp.to_i

puts palindrome_numbers(upper_limit)
