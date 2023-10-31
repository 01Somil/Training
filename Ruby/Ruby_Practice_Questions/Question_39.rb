def all_pairs(arr1, arr2, x)
  pairs = []
  arr1_hash = Hash.new
  arr1.each do |num|
    if arr1_hash.has_key?(num)
      arr1_hash[num] += 1
    else
      arr1_hash[num] = 1
    end
  end

  arr2.each do |num|
    if arr1_hash.has_key?(x - num)
      pairs.push([num, x - num])
    end
  end

  return pairs
end

print "Enter size of array1:"
n = gets.chomp.to_i
print "Enter size of array2:"
m = gets.chomp.to_i
arr1 = []
arr2 = []
puts "Enter values of array1:"
for i in 0...n
  x = gets.chomp.to_i
  arr1.push(x)
end

puts "Enter values of array2:"
for i in 0...m
  x = gets.chomp.to_i
  arr2.push(x)
end

print "Enter the value of x:"
x = gets.chomp.to_i

print all_pairs(arr1, arr2, x)
