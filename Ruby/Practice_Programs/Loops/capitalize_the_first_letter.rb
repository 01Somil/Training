def capitalize(words)
    res=String.new
    for i in words do
        res+=i.upcase[0]+i.slice(1,i.length-1)+" "
    end
    return res.slice(0,res.length-1)
end


print "Enter the string:"
str=gets.chomp
words=str.split(" ")
print capitalize(words)