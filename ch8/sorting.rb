#!/usr/bin/env ruby

words = []

puts 'Enter words'
while true
    word = gets.chomp
    if word.empty?
        break
    end
    words.push word
end

if !words.empty?
    puts 'Sorted list of words:'
    puts words.sort!
end