def reverse_odd(str)
	words=str.split(" ")
    for i in words do
        if i.length.odd?
            i.reverse!
        end
    end
    return words.join(" ")
end

print "Enter the string:"
str=gets.chomp
puts reverse_odd(str)