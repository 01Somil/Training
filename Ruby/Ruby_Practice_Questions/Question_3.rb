def reverse_vowel(str)
  res = ""
  vowels = str.scan(/[aeiouAEIOU]/)
  reversed_vowel_string = vowels.reverse

  str.chars.each do |letter|
    if letter.match(/[aeiouAEIOU]/)
      res += reversed_vowel_string.shift
    else
      res += letter
    end
  end

  return res
end

print "Enter the string:"
str = gets.chomp
puts reverse_vowel(str)
