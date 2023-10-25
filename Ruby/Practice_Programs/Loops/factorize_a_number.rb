def factorize(num)
    res=Array.new
    for i in 1..num do
        if num%i == 0
            res.push(i)
        end
    end
    return res
end

print "Enter a number:"
num=gets.chomp.to_i

res=factorize(num)
print res
