def time_difference(time1, time2)
  time_splits1 = time1.split(/[:\s]/)
  time_splits2 = time2.split(/[:\s]/)
  hour = 0
  min = 0

  if time_splits1.length == 2
    time_splits1[0] = time_splits1[0].to_i
    time_splits1[1] = time_splits1[1].to_i
    time_splits2[0] = time_splits2[0].to_i
    time_splits2[1] = time_splits2[1].to_i

    minutes_of_time1 = time_splits1[0] * 60 + time_splits1[1]
    minutes_of_time2 = time_splits2[0] * 60 + time_splits2[1]
    difference = (minutes_of_time1 - minutes_of_time2).abs
    hour = difference / 60
    min = difference % 60
  elsif time_splits1.length == 3
    hour1 = time_splits1[0].to_i
    min1 = time_splits1[1].to_i
    meridian1 = time_splits1[2]
    hour2 = time_splits2[0].to_i
    min2 = time_splits2[1].to_i
    meridian2 = time_splits2[2]

    if meridian1.downcase == "pm" && hour1 < 12
      hour1 += 12
    elsif meridian1.downcase == "am" && hour1 == 12
      hour1 = 0
    end
    if meridian2.downcase == "pm" && hour2 < 12
      hour2 += 12
    elsif meridian2.downcase == "am" && hour2 == 12
      hour2 = 0
    end

    minutes_of_time1 = hour1 * 60 + min1
    minutes_of_time2 = hour2 * 60 + min2
    difference = (minutes_of_time1 - minutes_of_time2).abs
    hour = difference / 60
    min = difference % 60
  end

  return [hour, min]
end

print "Enter first time (hh:mm):"
time1 = gets.chomp
print "Enter second time (hh:mm):"
time2 = gets.chomp

res = time_difference(time1, time2)
puts "Time difference between these times is:#{res[0]} hours and #{res[1]} minutes"
