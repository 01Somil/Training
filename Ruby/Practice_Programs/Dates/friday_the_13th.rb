require "date"

def has_friday_13(month, year)
  date = Date.new(year, month, 13)
  if date.friday?
    return true
  end

  return false
end

print "Enter the month:"
month = gets.chomp.to_i
print "Enter the year:"
year = gets.chomp.to_i
puts has_friday_13(month, year)
