# without default value
value = catch(:divide) do
  number = rand(2)
  throw :divide if number == 0
  number
end

puts value

# withdefault value
value = catch(:divide) do
  number = rand(2)
  throw :divide, 10 if number == 0
  number
end

puts value
