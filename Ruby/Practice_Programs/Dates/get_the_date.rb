require "date"

def get_day(day)
  date_format = Date.strptime(day, "%m/%d/%Y")
  return date_format.strftime("%A")
end

print "Enter the date in (mm/dd/yyyy) format:"
day = gets.chomp

puts get_day(day)
