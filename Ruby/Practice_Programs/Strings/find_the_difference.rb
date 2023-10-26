def find_the_difference(s, t)
	words1=t.chars
    words2=s.chars
    for i in words1 do
        if s.include?(i)
            s=s.slice!(1,s.length)
        else
            return i
        end
    end
end

print "Enter first string:"
s=gets.chomp
print "Enter second string:"
t=gets.chomp
puts find_the_difference(s,t)

