def get_triangle_type(arr)
    if arr.length<3 || arr.length>3
        return "Not a triangle"
    end
    if arr[0]==arr[1] && arr[1]==arr[2]
        return "Equilateral"
    elsif arr[0]==arr[1] || arr[1]==arr[2] || arr[0]==arr[2]
        return "Isosceless"
    else
        return "Scalene"
    end
end

arr=[]
i=0

for i in 0...3 do
    x=gets.chomp.to_i
    arr.push(x)
    i+=1
end

puts get_triangle_type(arr)
