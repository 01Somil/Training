def sort_array(arr)
  return arr.sort_by { |str| str.to_i }
end

print "Enter the array (space separated values):"
str = gets.chomp
arr = str.split(" ")

print sort_array(arr)
