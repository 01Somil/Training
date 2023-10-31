def good_string(s)
  if s.length == 0
    return true
  end
  
  hash = Hash.new
  s.chars.each do |char|
    if hash.has_key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  hash_new = Hash.new
  hash.each do |key, value|
    if hash_new.has_key?(value)
      hash_new[value] += 1
    else
      hash_new[value] = 1
    end
  end

  if hash_new.size == 1
    return true
  end

  return false
end

print "Enter the string:"
s = gets.chomp
puts good_string(s)
