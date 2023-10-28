require "date"

def week_after(d)
  date = Date.strptime(d, "%d/%m/%Y")
  date = date + 7

  return date.strftime("%d/%m/%Y")
end

print "Enter the date:"
d = gets.chomp

puts week_after(d)
