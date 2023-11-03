def calculated_bonus(days)
  bonus = 0
  if days > 32 && days <= 40
    _temp = days - 32
    bonus = _temp * 325
  elsif days > 40 && days <= 48
    bonus = 8 * 325
    _temp = days - 40
    bonus += _temp * 550
  elsif days > 48
    bonus = 8 * 325
    bonus += (8 * 550)
    _temp = days - 48
    bonus += _temp * 600
  end

  return bonus
end

print "Enter number of days:"
days = gets.chomp.to_i
puts calculated_bonus(days)
