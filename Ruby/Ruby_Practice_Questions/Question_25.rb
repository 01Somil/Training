def majority_element(arr)
  eligibility = arr.length / 2
  hash = Hash.new

  arr.each do |value|
    if hash.has_key?(value)
      hash[value] += 1
    else
      hash[value] = 1
    end
    if hash[value] > eligibility
      return value
    end
  end
  
end

print "Enter the size of array:"
n = gets.chomp.to_i
arr = []
for i in 0...n
  arr.push(gets.chomp.to_i)
end

print "Majority element is:", majority_element(arr)
