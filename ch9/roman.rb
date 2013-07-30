#!/usr/bin/env ruby

$roman_values = [1, 5, 10, 50, 100, 500, 1000]
$roman_letters = ['I', 'V', 'X', 'L', 'C', 'D', 'M']
$powers_of_10 = [1, 10, 100]

# examples:
# 40 = XL
# 49 = XLIX (not IL)
# 90 = XC
# 99 = XCIX
# 888 = DCCCLXXXVIII
# 900 = CM
# 999 = CMXCIX
# 1000 = M

def as_letter value
    $roman_letters[$roman_values.index(value)]
end

def is_subtractive amount, from
    # Subtractive rule: You can only subtract a power of ten, 
    # and only from the next two higher "digits", where the digits are {I, V, X, L, C, D, M}        
    diff = $roman_values.index(from) - $roman_values.index(amount)
    return (diff == 1 or diff == 2)
end

def check_candidate number, candidate, roman_so_far
    if number / candidate > 0
        number = number - candidate
        letter = as_letter(candidate)
        roman_so_far.push(letter)
    else
        $powers_of_10.each do |subtractor|
            if is_subtractive(subtractor, candidate) and (number + subtractor) / candidate > 0 
                number = number - (candidate - subtractor)
                roman_so_far.push(as_letter(subtractor)).push(as_letter(candidate))
                break
            end
        end
    end
    return number
end

def to_roman number
    roman_so_far = []
    while number > 0
        $roman_values.reverse.each do |candidate|
            number_left = check_candidate(number, candidate, roman_so_far)
            if number_left < number
                number = number_left
                break
            end
        end
    end
    return roman_so_far.join("")
end

puts "Enter a number to Romanize (empty or 0 to quit)"
while true
    number = gets.chomp.to_i
    if number == 0 
        break
    end
    puts to_roman(number)
end
