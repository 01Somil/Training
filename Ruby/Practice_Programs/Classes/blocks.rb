def person
  print "Hii,I am "
  yield 20
  puts "I am a Ruby Developer"
end

person { |age| puts "John, #{age} years old" }
