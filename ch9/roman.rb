#!/usr/bin/env ruby

def to_old_roman int

    roman = []

    while int > 0 
        if int / 1000 > 0
            int = int - 1000 
            roman.push "M"
        elsif int / 500 > 0
            int = int - 500
            roman.push "D"
        elsif int / 100 > 0
            int = int - 100
            roman.push "C"
        elsif int / 50 > 0
            int = int - 50
            roman.push "L"
        elsif int / 10 > 0
            int = int - 10
            roman.push "X"
        elsif int / 5 > 0
            int = int - 5
            roman.push "V"
        else
            int = int - 1
            roman.push "I"
        end
    end
    return roman.join("")
end

puts "Enter a number to Romanize (0 to quit)"
while true
    int = gets.chomp.to_i
    if int == 0 
        break
    end
    puts to_old_roman(int)
end
