require "date"

def get_day(date)
  date_format = Date.strptime(date, "%m/%d/%Y")
  return date_format.strftime("%A")
end

print "Enter the date in (mm/dd/yyyy) format:"
date = gets.chomp

puts get_day(date)
