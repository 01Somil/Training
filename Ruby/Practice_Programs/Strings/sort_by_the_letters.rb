def sort_by_lettters(arr)
  arr.sort_by! do |x|
    x.scan(/[a-z]/)
  end

  return arr
end

arr = []
puts "Enter the array (type end to finish):"
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  arr.push(s)
end

print sort_by_lettters(arr)
