require "date"

def saturday_14ths(year)
  count_saturday = 0
  date = Date.new(year, 01, 01)
  
  while date.year == year
    if date.saturday? && date.day == 14
      count_saturday += 1
    end
    date = date.next
  end

  return count_saturday
end

print "Enter the year:"
year = gets.chomp.to_i

puts saturday_14ths(year)
