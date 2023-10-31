def maximum_instances(text, word)
  text_hash = Hash.new
  text.chars.each do |char|
    if text_hash.key?(char)
      text_hash[char] += 1
    else
      text_hash[char] = 1
    end
  end

  word_hash = Hash.new
  word.chars.each do |char|
    if word_hash.key?(char)
      word_hash[char] += 1
    else
      word_hash[char] = 1
    end
  end

  letters_of_words = word_hash.keys
  mini = 100000
  letters_of_words.each do |letter|
    _temp = 0
    if text_hash.has_key?(letter)
      _temp = text_hash[letter] / word_hash[letter]
    else
      return 0
    end
    mini = [mini, _temp].min
  end

  return mini
end

print "Enter the text:"
text = gets.chomp
print "Enter the word:"
word = gets.chomp

puts maximum_instances(text, word)
