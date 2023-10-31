def prefix_string(s, words)
  _str = ""
  words.each do |word|
    _str += word
    if _str == s
      return true
    end
    if _str.length > s.length
      return false
    end
  end

  return false
end

words = []
print "Enter the string:"
s = gets.chomp
puts "Enter array of words:"
loop do
  word = gets.chomp
  if word.empty?
    break
  end
  words.push(word)
end

puts prefix_string(s, words)
