def number_to_google(numbers)
  res = []

  numbers.each do |num|
    str = ""
    dot = false
    rep = false
    repeat = ""

    num.chars.each do |letter|
      if rep == true
        repeat += letter
      elsif letter == "1"
        str += "g"
      elsif letter == "2"
        str += "o"
      elsif letter == "3"
        str += "l"
      elsif letter == "4"
        str += "e"
      elsif letter == "5"
        temp_char = str[-1]
        temp_char.upcase!
        str = str.chop
        str += temp_char
      elsif letter == "6"
        dot = true
      elsif letter == "7"
        temp_char = str.chr
        temp_char.upcase!
        rem = str.slice(1, str.length)
        str = str.clear
        str += temp_char
        str += rem
      elsif letter == "8"
        str.reverse!
      elsif letter == "9"
        str = str.clear
        dot = false
      elsif letter == "0"
        rep = true
      end
    end

    repeat = repeat.to_i
    repeat -= 1
    temp_str = str

    repeat.times do
      str += temp_str
    end
    if dot == true
      str += "."
    end
    res.push(str)
  end

  return res.join("")
end

puts "Enter the array (type end to finish):"
numbers = []
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  numbers.push(s)
end

puts number_to_google(numbers)
