def password_validation(str)
  if str.length >= 6 && str.length <= 24
    if str.match(/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[[:punct:]])/)
      if str.match(/^(?!.*(.).*\1.*\1)/)
        return true
      end
    end
  end
  
  return false
end

print "Enter the string:"
str = gets.chomp

puts password_validation(str)
