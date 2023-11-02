$hash = { "2" => "abc", "3" => "def", "4" => "ghi",
          "5" => "jkl", "6" => "mno", "7" => "pqrs",
          "8" => "tuv", "9" => "wxyz" }

def letter_combination(number, idx, str, res)
  if idx >= number.length
    res.push(str)
    return
  end

  digits = number.chars
  _temp = $hash[digits[idx]].chars
  for i in 0..._temp.length
    str += _temp[i]
    letter_combination(number, idx + 1, str, res)
    str = str.chop
  end
end

print "Enter the number:"
number = gets.chomp
res = []
letter_combination(number, 0, "", res)
puts res
