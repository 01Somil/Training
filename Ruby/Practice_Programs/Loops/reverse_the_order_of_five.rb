def reverse(words)
    res=String.new
    words.each do |i|
        if i.length>=5
            res=res+i.reverse+" "
        else
            res=res+i+" ";
        end
    end
    return res.slice(0,res.length-1)
end

print "Enter the string:"
str=gets.chomp
words=str.split(" ")
print reverse(words)
