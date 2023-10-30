def destination_city(arr)
  hash = Hash.new
  arr.each do |path|
    if hash.has_key?(path[0])
      hash[path[0]] += 1
    else
      hash[path[0]] = 1
    end
    if hash.has_key?(path[1])
      hash[path[1]] -= 1
    else
      hash[path[1]] = -1
    end
  end

  hash.each do |key, value|
    if value == -1
      return key
    end
  end
  
end

arr = []
loop do
  print "Enter the source and destination city(, separated) or enter end when you are done with input:"
  str = gets.chomp
  if str == "end"
    break
  end
  paths = str.split(",")
  arr.push(paths)
end

puts destination_city(arr)
