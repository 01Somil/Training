def sales_of_product(sales_table, product)
  n = sales_table.length
  if !sales_table[0].include?(product)
    return "Product not found"
  end
  sum = 0
  index_of_product = sales_table[0].find_index(product)
  for i in 0...n
    sum += sales_table[i][index_of_product].to_i
  end

  return sum
end

puts "Enter the 2-D array (type end to finish the row):"
sales_table = []
loop do
  arr = []
  loop do
    s = gets.chomp
    if s == "end"
      break
    end
    arr.push(s)
  end
  puts "type nextrow for another row or end to finish"
  s = gets.chomp
  if s == "nextrow"
    sales_table.push(arr)
  elsif s == "end"
    sales_table.push(arr)
    break
  end
end

print "Enter the product:"
product = gets.chomp

puts sales_of_product(sales_table, product)
