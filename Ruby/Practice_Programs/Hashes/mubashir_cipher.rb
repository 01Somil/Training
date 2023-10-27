def mubashir_cipher(message)
  res = ""
  key = [["m", "c"], ["u", "e"], ["b", "g"],
         ["a", "k"], ["s", "v"], ["h", "x"], ["i", "z"],
         ["r", "y"], ["p", "w"], ["l", "n"], ["o", "j"],
         ["t", "f"], ["q", "d"]]
         
  hash_characters = Hash[key]
  message.chars.each do |letter|
    if letter == " "
      res += " "
    elsif hash_characters.has_key?(letter)
      res += hash_characters[letter]
    elsif hash_characters.has_value?(letter)
      res += hash_characters.key(letter)
    else
      res += letter
    end
  end

  return res
end

print "Enter the message:"
message = gets.chomp
print mubashir_cipher(message)
