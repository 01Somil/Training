def next_meal_time(time)
  time_array = time.split(/[:\s]/)
  hour = time_array[0].to_i
  min = time_array[1].to_i
  meridian = time_array[2]
  morning_min = 7 * 60
  lunch_min = 12 * 60
  dinner_min = 19 * 60

  if meridian == "p.m." && hour < 12
    hour += 12
  elsif meridian == "a.m." && hour == 12
    hour = 0
  end
  total_min = hour * 60 + min

  if meridian == "a.m." && hour < 7
    time_difference = morning_min - total_min
  elsif meridian == "a.m." && hour >= 7
    time_difference = lunch_min - total_min
  elsif meridian == "p.m." && hour == 12
    time_difference = dinner_min - total_min
  elsif meridian == "p.m." && hour > 12 && hour < 19
    time_difference = dinner_min - total_min
  elsif meridian == "p.m." && hour >= 19
    _temp_min = (24 * 60) - total_min
    _temp_min += (7 * 60)
    time_difference = _temp_min
  end

  rem_hour = time_difference / 60
  rem_min = time_difference % 60
  return [rem_hour, rem_min]
end

print "Enter the time:"
time = gets.chomp

print next_meal_time(time)
