def digital_cipher(message, key)
  res = []
  hash_of_characters = Hash.new
  for i in 1..26 do
    hash_of_characters.store((i + 97 - 1).chr, i)
  end

  keys = key.to_s.chars
  idx = 0
  key_length = keys.size

  message.chars.each do |letter|
    temp = hash_of_characters[letter] + keys[idx % key_length].to_i
    res.push(temp)
    idx += 1
  end

  return res
end

print "Enter the message:"
message = gets.chomp
print "Enter the key:"
key = gets.chomp.to_i

print digital_cipher(message, key)
