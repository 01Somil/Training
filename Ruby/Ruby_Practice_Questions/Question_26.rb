def kth_distinct_string(strings, k)
  hash = Hash.new

  strings.each do |word|
    if hash.has_key?(word)
      hash[word] += 1
    else
      hash[word] = 1
    end
  end
  
  strings.each do |word|
    if hash[word] == 1
      k -= 1
    end
    if k == 0
      return word
    end
  end

  return ""
end

puts "Enter the array of string (space separated values):"
str = gets.chomp
print "Enter the value k:"
k = gets.chomp.to_i
strings = str.split(" ")
puts kth_distinct_string(strings, k)
