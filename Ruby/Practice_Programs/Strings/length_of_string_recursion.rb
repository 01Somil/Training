def len(str)
  if str.nil? || str.length == 0
    return 0
  end

  return 1 + len(str.slice(0...-1))
end

print "Enter the string:"
str = gets.chomp
str.gsub!("/\s+/", "")
print len(str)
