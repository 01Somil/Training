def ascii_capitals(str)
  words = str.split(" ")
  sum = 0
  ascii_sum = []
  words.each do |word|
    _temp = 0
    word.each_codepoint { |x| _temp += x }
    ascii_sum.push(_temp)
  end
  total = ascii_sum.reduce(0) { |accumulator, x| accumulator + x }
  avg = (total.to_f / ascii_sum.length.to_f).round(2)
  words.each_with_index do |word, index|
    if ascii_sum[index] > avg
      word.upcase!
    end
  end

  return words.join(" ")
end

print "Enter the string:"
str = gets.chomp

puts ascii_capitals(str)
