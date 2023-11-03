require "date"

def date_parse(date)
  hash_month = { "Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4, "May" => 5,
                 "Jun" => 6, "Jul" => 7, "Aug" => 8, "Sep" => 9, "Oct" => 10,
                 "Nov" => 11, "Dec" => 12 }
  date_parts = date.split(", ")
  _tempMon = date_parts[0].slice(0, 3)
  mon = hash_month[_tempMon]
  day = date_parts[1].to_i
  return Date.new(2023, mon, day)
end

def season(hemisphere, date)
  date_format = date_parse(date)
  #puts date_format
  if date_format >= date_parse("March, 1") && date_format <= date_parse("May, 31") && hemisphere == "N"
    return "Spring"
  elsif date_format >= date_parse("March, 1") && date_format <= date_parse("May, 31") && hemisphere == "S"
    return "Autumn"
  elsif date_format >= date_parse("June, 1") && date_format <= date_parse("August, 31") && hemisphere == "N"
    return "Summer"
  elsif date_format >= date_parse("June, 1") && date_format <= date_parse("August, 31") && hemisphere == "S"
    return "Winter"
  elsif date_format >= date_parse("September, 1") && date_format <= date_parse("Novemeber, 30") && hemisphere == "N"
    return "Autumn"
  elsif date_format >= date_parse("September, 1") && date_format <= date_parse("November, 30") && hemisphere == "S"
    return "Spring"
  elsif date_format >= date_parse("December, 1") && date_format <= date_parse("February, 28") && hemisphere == "N"
    return "Winter"
  elsif date_format >= date_parse("December, 1") && date_format <= date_parse("February, 28") && hemisphere == "S"
    return "Summer"
  else
    return "Invalid Season"
  end
end

print "Enter the hemisphere (N or S):"
hemisphere = gets.chomp
print "Enter the date:"
date = gets.chomp

puts season(hemisphere, date)
