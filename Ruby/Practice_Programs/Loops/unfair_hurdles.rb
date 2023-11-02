def unfair_hurdles(arr)
  if arr.length == 0
    return false
  end

  if arr.length >= 4
    return true
  end
  hashtag = arr[0].scan("#")
  spaces = arr[0].scan(" ")
  space_between = spaces.length / (hashtag.length - 1)
  if space_between < 4
    return true
  end

  return false
end

puts "Enter the array (type end to finish):"
arr = []

loop do
  s = gets.chomp
  if s == "end"
    break
  end
  arr.push(s)
end

puts unfair_hurdles(arr)
