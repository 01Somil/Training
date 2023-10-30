def even_digits(arr)
  count_even_digits = 0
  arr.each do |value|
    if value.to_s.length % 2 == 0
      count_even_digits += 1
    end
  end

  return count_even_digits
end

puts "Enter the array:"
arr = []

loop do
  num = gets.chomp

  if num.empty?
    break
  end

  arr.push(num.to_i)
end

puts even_digits arr
