require "date"

def days_away_from_2023(date)
  date_format = Date.strptime(date, "%m/%d/%Y")
  if date_format.year >= 2023
    return 0
  end
  end_date = Date.new(2023)
  return (end_date - date_format).to_i
end

print "Enter the date in (mm/dd/yyyy) format:"
date = gets.chomp

print "Days away from 2023:", days_away_from_2023(date)
