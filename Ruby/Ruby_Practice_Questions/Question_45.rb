require 'date'

def number_of_leap_years(str)
    range=str.split("-")
    range[0]=range[0].to_i
    range[1]=range[1].to_i
    leap_year=0
    yr=Date.new(range[0])
    while yr.year<=range[1]
        if yr.leap?
            puts yr.year
            leap_year+=1
        end
        yr=yr.next_year
    end

    return leap_year
end

print "Enter range of years (-):"
str=gets.chomp

puts number_of_leap_years(str)
