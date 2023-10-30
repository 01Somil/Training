def phrase_palindrome(phrase)
  phrase.downcase!
  phrase.gsub!(/[[:punct:]]/, "").gsub!(/\s+/, "")

  if phrase == phrase.reverse
    return true
  end

  return false
end

print "Enter the phrase:"
phrase = gets.chomp

puts phrase_palindrome(phrase)
