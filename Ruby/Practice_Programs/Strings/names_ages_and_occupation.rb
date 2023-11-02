def organize(str)
  words = str.split(", ")
  arr = []
  i = 0
  loop do
    if i >= words.length
      break
    end
    hash = { :name => words[i], :age => words[i + 1], :occupation => words[i + 2] }
    arr.push(hash)
    i += 3
  end

  return arr
end

print "Enter a string:"
str = gets.chomp

puts organize(str)
