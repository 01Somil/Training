require "date"

def after_n_days(days_array, n)
  after_n_days_array = []
  
  days_array.each do |day|
    date_format = Date.strptime(day, "%A")
    _tempDay = date_format + n
    after_n_days_array.push(_tempDay.strftime("%A"))
  end

  return after_n_days_array
end

puts "Enter days in array (type end to finish):"
days_array = []
loop do
  s = gets.chomp
  if s == "end"
    break
  end
  days_array.push(s)
end

print "Enter increment value:"
n = gets.chomp.to_i

print after_n_days(days_array, n)
