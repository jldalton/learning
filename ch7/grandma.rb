#!/usr/bin/env ruby

while true
    wys = gets.chomp
    if wys.upcase! == nil
        if wys == "BYE" 
            break
        else
            year = rand(20) +  1930
            puts %Q<NO, NOT SINCE #{year}!>
        end
    else
        puts "HUH?! SPEAK UP, SONNY!"
    end

end