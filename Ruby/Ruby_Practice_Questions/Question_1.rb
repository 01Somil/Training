def filter(arr)
  res = []
  arr.each do |x|
    if x.is_a?(Integer)
      res.push(x)
    end
  end

  return res
end

print "Enter the arr with spaces:"
str = gets.chomp

arr = Array.new
str.split(" ").each do |ele|
  if ele =~ /\A\d+\z/
    arr.push(ele.to_i)
  else
    arr.push(ele)
  end
end

print filter(arr)
