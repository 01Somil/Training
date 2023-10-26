def calculate_scores(str)
	res=[]
    acount=str.count('A')
    bcount=str.count('B')
    ccount=str.count('C')
    res.push(acount)
    res.push(bcount)
    res.push(ccount)
    return res
end

print "Enter the string:"
str=gets.chomp
print calculate_scores(str)