def fibonacci_sequence(arr)
    while(arr[-1]<255)
        arr.push(arr[-1]+arr[-2])
    end
    arr.pop
    return arr
end

arr=[0,1]
print fibonacci_sequence(arr)