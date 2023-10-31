def longest_palindrome(str)
  hash = Hash.new
  str.chars.each do |char|
    if hash.key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  length_of_palindrome = 0
  maxi = 0
  hash.each do |key, value|
    if value % 2 == 1
      maxi = [maxi, value].max
    else
      length_of_palindrome += value
    end
  end

  return length_of_palindrome + maxi
end

print "Enter the string:"
str = gets.chomp

print "Length of Longest Palindrome is:", longest_palindrome(str)
