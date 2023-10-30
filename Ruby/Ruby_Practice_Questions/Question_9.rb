def first_non_repeating_character(str)
  hash = Hash.new

  str.chars.each do |char|
    if hash.key?(char)
      hash[char] += 1
    else
      hash.store(char, 1)
    end
  end
  
  characters = str.chars
  for i in 0...characters.length
    if hash[characters[i]] == 1
      return i
    end
  end

  return -1
end

print "Enter the string:"
str = gets.chomp

puts first_non_repeating_character(str)
