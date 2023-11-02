def sort_the_dates(arr, mode)
  arr.sort_by! do |date|
    date_split = date.split(/[-_:]/)
    [date_split[2], date_split[1], date_split[0], date_split[3], date_split[4]]
  end

  if mode == "ASC"
    return arr
  else
    return arr.reverse
  end
end

puts "Enter the dates in array (type end to finish):"
arr = []
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  arr.push(s)
end

print "Enter the mode:"
mode = gets.chomp

puts sort_the_dates(arr, mode)
