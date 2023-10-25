def scale_tip(arr)
	l=0
	r=0
	flag=false
	for i in arr do
        if i=='I'
			flag=true
        elsif flag==false
			l+=i.to_i
		else
			r+=i.to_i
		end
    end
	if l==r
		return "Balanced"
    elsif l>r
		return "Left"
	else
		return "Right"
	end			
end

=begin
puts scale_tip([0, 0, "I", 1, 1])
puts scale_tip([5, 5, 5, 0, "I", 10, 2, 2, 1])
puts scale_tip([1, 2, 3, "I", 4, 0, 0])
=end

arr=[]
loop do
    x=gets.chomp
    if x.empty?
        break
    end
    arr.push(x)
end

puts scale_tip(arr)