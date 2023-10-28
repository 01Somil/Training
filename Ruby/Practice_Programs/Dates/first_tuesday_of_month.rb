require "date"

def first_tuesday_of_the_month(year, month)
  date = Date.new(year, month, 01)

  while !date.tuesday?
    date = date.next_day
  end

  return date.strftime("%Y-%m-%d")
end

print "Enter the year:"
year = gets.chomp.to_i
print "Enter the month:"
month = gets.chomp.to_i

puts first_tuesday_of_the_month(year, month)
