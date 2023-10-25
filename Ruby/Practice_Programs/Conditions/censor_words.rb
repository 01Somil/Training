def censor(s)
	words=s.split(" ")
	res=String.new
	for i in words do
		if i.length>4
				res+='*' * i.length
		else
			res+=i
        res+=" "
		end
	end
		return res.slice(0,res.length-1)
end

print "Enter the string:"
str=gets.chomp

print censor(str)