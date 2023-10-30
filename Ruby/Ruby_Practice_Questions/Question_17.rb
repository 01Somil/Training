def fibonacci_array(index)
  if index <= 1
    case index
    when 0
      return [0]
    when 1
      return [0, 1]
    else
      puts "Invalid index"
    end
  end

  res = [0, 1]
  for i in 2..index
    res.push(res[-1] + res[-2])
  end

  return res
end

print "Enter an integer value:"
index = gets.chomp.to_i

puts fibonacci_array(index)
