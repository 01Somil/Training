require "date"

def number_of_days(year, month)
  date = Date.new(year, month, 28)
  while date.month == month
    date = date.next
  end
  date = date - 1

  return date.day
end

print "Enter the year:"
year = gets.chomp.to_i
print "Enter the month:"
month = gets.chomp.to_i

puts number_of_days(year, month)
