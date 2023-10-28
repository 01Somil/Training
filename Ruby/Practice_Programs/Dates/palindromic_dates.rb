require "date"

def palindromic_date(date)
  original_date = date
  date = date.to_s.gsub(/-+/, "")
  original_date = original_date.strftime("%m-%d-%Y")
  original_date.to_s.gsub!(/-+/, "")

  if date == date.reverse
    if original_date == original_date.reverse
      return true
    end
  end

  return false
end

print "Enter the date:"
date = gets.chomp
date = Date.parse(date)
puts palindromic_date(date)
