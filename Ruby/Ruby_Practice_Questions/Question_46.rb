require "date"

def is_valid_date(day, month, year)
  if Date.valid_date?(year, month, day)
    return true
  end
  return false
end

print "Enter the day:"
day = gets.chomp.to_i
print "Enter the month:"
month = gets.chomp.to_i
print "Enter the year:"
year = gets.chomp.to_i

puts is_valid_date(day, month, year)
