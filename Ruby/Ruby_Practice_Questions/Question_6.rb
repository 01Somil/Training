def reverse_string(str)
  words = str.split(".")
  return words.reverse.join(".")
end

print "Enter the string:"
str = gets.chomp
puts reverse_string(str)
