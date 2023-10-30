def anagram(s, t)
  characters1 = s.chars
  characters2 = t.chars
  if characters1.length != characters2.length
    return false
  end

  characters1.each do |letter|
    if characters2.include?(letter)
      idx = characters2.find_index(letter)
      characters2.delete_at(idx)
    else
      return false
    end
  end

  return true
end

print "Enter the first string: "
s = gets.chomp

print "Enter the second string: "
t = gets.chomp

puts anagram(s, t)
