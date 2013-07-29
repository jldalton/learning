#!/usr/bin/env ruby

def ask question
    while true
        puts question
        reply = gets.chomp.downcase

        if reply == 'yes' || reply == 'no' then
            if reply == 'yes' then
                return true
            else
                return false
            end
            break
        else
            puts 'Please answer "yes" or "no".'
        end
    end
end

result = ask "Do you?"

puts result

