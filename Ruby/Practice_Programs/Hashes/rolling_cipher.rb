def rolling_cipher(str, n)
  res = []
  hash_of_characters = Hash.new
  for i in 0...26 do
    hash_of_characters.store((i + 97).chr, i)
  end

  str.chars.each do |letter|
    temp = (hash_of_characters[letter] + n) % 26
    res.push(hash_of_characters.key(temp))
  end

  return res.join("")
end

print "Enter the string:"
str = gets.chomp
print "Enter the number:"
n = gets.chomp.to_i

print rolling_cipher(str, n)
