def numbers_sum(arr)
    sum=0
    for i in arr
        if i.is_a?(Numeric)
            sum+=i
        end
    end
    return sum
end

arr=[1,2,"3","ruby",true,4]
puts numbers_sum(arr)   # Output : 7