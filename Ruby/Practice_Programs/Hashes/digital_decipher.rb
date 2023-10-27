def digital_decipher(eMessage, key)
  res = []
  hash_of_characters = Hash.new
  for i in 1..26
    hash_of_characters.store((i + 97 - 1).chr, i)
  end

  hash_of_characters = hash_of_characters.invert

  keys = key.to_s.chars
  idx = 0
  key_length = keys.size

  eMessage.each do |num|
    temp = num - keys[idx % key_length].to_i
    res.push(hash_of_characters[temp])
    idx += 1
  end

  return res.join("")
end

eMessage = Array.new
print "Enter the eMessage array:"
loop do
  num = gets.chomp
  if num.empty?
    break
  end
  eMessage.push(num.to_i)
end

print "Enter the key:"
key = gets.chomp.to_i

print digital_decipher(eMessage, key)
