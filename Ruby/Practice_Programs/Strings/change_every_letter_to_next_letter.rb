def move(word)
	for i in 0...word.length do
        word[i]=word[i].succ
	end
	return word
end


print "Enter the word:"
str=gets.chomp
res= move(str)
puts res

