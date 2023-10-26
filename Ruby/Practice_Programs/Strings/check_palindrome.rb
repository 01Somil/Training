def is_palindrome(str)
    str.downcase!
    str.gsub!(/[[:punct:]]/, '').gsub!(/\s+/, '')
    i=0
    j=str.length-1
    while i<j 
        if str[i]!=str[j]
            return false
        end
        i+=1
        j-=1
    end
    return true
end

print "Enter the string:"
str=gets.chomp
puts is_palindrome(str)