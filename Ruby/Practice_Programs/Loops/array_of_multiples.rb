def array_of_multiples(num,len)
    res=Array.new
    for i in 1..len do
        res.push(num*i)
    end
    return res
end

print "Enter the number:"
num=gets.chomp.to_i
print "Enter the length:"
len=gets.chomp.to_i

arr=array_of_multiples(num,len)
puts arr