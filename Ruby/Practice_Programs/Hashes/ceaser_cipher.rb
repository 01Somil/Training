def caesar_cipher(text, key)
  res = []
  hash_of_characters = Hash.new
  for i in 1..26
    hash_of_characters.store((i + 97 - 1).chr, i)
  end

  text.chars.each do |letter|
    if letter == " "
      res.push(" ")
    else
      temp = hash_of_characters[letter] + key
      res.push(hash_of_characters.key(temp))
    end
  end

  return res.join("")
end

print "Enter the text:"
text = gets.chomp
print "Enter the key:"
key = gets.chomp.to_i

print caesar_cipher(text, key)
