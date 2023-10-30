def remove_all_occurrences(s, part)
  while !s.scan(part).empty?
    puts "Hello"
    s.sub!(part, "")
  end
  
  return s
end

print "Enter the first string:"
s = gets.chomp
print "Enter the second string:"
part = gets.chomp

puts remove_all_occurrences(s, part)
