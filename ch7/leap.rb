#!/usr/bin/env ruby


def is_leap(year)

    if (year % 400 == 0)
        return true
    elsif (year % 100 == 0)
        return false
    elsif (year % 4 == 0)
        return true
    else
        return false
    end
end

puts "starting year"
starty = gets.chomp.to_i

puts "ending year"
endy = gets.chomp.to_i

year = starty

puts
puts "The following are leap years"
while year <= endy
    if is_leap(year) 
        puts year
    end
    year = year + 1
end


