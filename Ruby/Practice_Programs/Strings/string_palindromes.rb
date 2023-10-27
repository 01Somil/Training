def string_palindromes(str)
  if str.length == 0
    return true
  end
  if str[0] != str[-1]
    return false
  end
  if string_palindromes(str[1...-1])
    return true
  else
    return false
  end
  
end

print "Enter the string:"
str = gets.chomp
puts string_palindromes(str)
