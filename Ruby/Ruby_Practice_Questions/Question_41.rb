require "date"

def convert_dates(date)
  split_date = date.split(/[\s,\/\-.]/)
  hash_month = { "Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4, "May" => 5,
                 "Jun" => 6, "Jul" => 7, "Aug" => 8, "Sep" => 9, "Oct" => 10, "Nov" => 11, "Dec" => 12 }

  case split_date.length
  when 4
    mon = hash_month[split_date[0].slice(0, 3)]
    day = split_date[1].to_i
    year = split_date[3].to_i
    date_format = Date.new(year, mon, day)
    return date_format.strftime("%m,%d,%Y").split(",")
  when 3
    mon = split_date[0].to_i
    day = split_date[1].to_i
    year = split_date[2].to_i
    date_format = Date.new(year, mon, day)
    return date_format.strftime("%m,%d,%Y").split(",")
  else
    puts "Invalid format"
  end
  
end

print "Enter the date:"
date = gets.chomp
res = convert_dates(date)
print res.map(&:to_i)
