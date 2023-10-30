def permutation(str)
  characters = str.split("")
  characters.permutation(characters.length) { |x| p x.join("") }
end

print "Enter the string:"
str = gets.chomp
permutation(str)
