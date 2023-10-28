require "date"

def how_unlucky(y)
  count = 0
  d = Date.new(y)
  loop do
    if d.friday? && d.day == 13
      count += 1
    end
    d = d.next
    if d.year != y
      break
    end
  end

  return count
end

print "Enter the year:"
y = gets.chomp.to_i
puts how_unlucky(y)
